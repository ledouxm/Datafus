package com.ankamagames.berilia.components.gridRenderer
{
   import com.ankamagames.berilia.UIComponent;
   import com.ankamagames.berilia.components.Grid;
   import com.ankamagames.berilia.components.Label;
   import com.ankamagames.berilia.interfaces.IGridRenderer;
   import com.ankamagames.jerakine.logger.Log;
   import com.ankamagames.jerakine.logger.Logger;
   import com.ankamagames.jerakine.messages.Message;
   import com.ankamagames.jerakine.types.Uri;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Transform;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class LabelGridRenderer implements IGridRenderer
   {
       
      
      protected var _log:Logger;
      
      private var _grid:Grid;
      
      private var _bgColor1:ColorTransform;
      
      private var _bgColor2:ColorTransform;
      
      private var _selectedColor:ColorTransform;
      
      private var _overColor:ColorTransform;
      
      private var _cssUri:Uri;
      
      private var _cssClass:String;
      
      private var _shapeIndex:Dictionary;
      
      private var _firstEntryCssClass:String;
      
      private var _buttonWidth:Number = 0;
      
      public function LabelGridRenderer(strParams:String)
      {
         var params:Array = null;
         this._log = Log.getLogger(getQualifiedClassName(LabelGridRenderer));
         this._shapeIndex = new Dictionary(true);
         super();
         if(strParams)
         {
            params = !!strParams.length ? strParams.split(",") : null;
            if(params[0] && params[0].length)
            {
               this._cssUri = new Uri(params[0]);
            }
            if(params[1] && params[1].length)
            {
               this._bgColor1 = this.getColorTransformFromARGB(params[1]);
            }
            if(params[2] && params[2].length)
            {
               this._bgColor2 = this.getColorTransformFromARGB(params[2]);
            }
            if(params[3] && params[3].length)
            {
               this._overColor = this.getColorTransformFromARGB(params[3]);
            }
            if(params[4] && params[4].length)
            {
               this._selectedColor = this.getColorTransformFromARGB(params[4]);
            }
            if(params[5] && params[5].length)
            {
               this._firstEntryCssClass = params[5];
            }
            if(params[6] && params[6].length)
            {
               this._cssClass = params[6];
            }
         }
      }
      
      public function set buttonWidth(width:Number) : void
      {
         this._buttonWidth = width;
      }
      
      public function get buttonWidth() : Number
      {
         return this._buttonWidth;
      }
      
      private function getColorTransformFromARGB(argb:String) : ColorTransform
      {
         if(argb.length < 10)
         {
            argb = argb.replace("0x","0xFF");
         }
         var color:uint = parseInt(argb,16);
         var alpha:Number = (color >> 24 & 255) / 255;
         var red:Number = (color >> 16 & 255) / 255;
         var green:Number = (color >> 8 & 255) / 255;
         var blue:Number = (color & 255) / 255;
         return new ColorTransform(red,green,blue,alpha);
      }
      
      public function set grid(g:Grid) : void
      {
         this._grid = g;
      }
      
      public function render(data:*, index:uint, selected:Boolean, subIndex:uint = 0) : DisplayObject
      {
         var label:Label = new Label();
         label.name = this._grid.getUi().name + "::" + this._grid.name + "::item" + index;
         if(this._cssUri)
         {
            label.css = this._cssUri;
         }
         if(this._cssClass)
         {
            label.cssClass = this._cssClass;
         }
         if(this._firstEntryCssClass && index == 0 && !data && !selected)
         {
            label.cssClass = this._firstEntryCssClass;
            this._firstEntryCssClass = "";
         }
         label.useHandCursor = true;
         label.mouseEnabled = true;
         label.width = this._grid.slotWidth - this._buttonWidth;
         label.height = this._grid.slotHeight;
         label.verticalAlign = "center";
         if(data is String || data === null)
         {
            label.text = data;
         }
         else
         {
            label.text = data.label;
         }
         this.updateBackground(label,index,selected);
         label.finalize();
         label.addEventListener(MouseEvent.MOUSE_OVER,this.onRollOver);
         label.addEventListener(MouseEvent.MOUSE_OUT,this.onRollOut);
         return label;
      }
      
      public function update(data:*, index:uint, dispObj:DisplayObject, selected:Boolean, subIndex:uint = 0) : void
      {
         var label:Label = null;
         if(dispObj is Label)
         {
            label = dispObj as Label;
            if(data is String || data == null)
            {
               label.text = data;
            }
            else
            {
               label.text = data.label;
            }
            this.updateBackground(label,index,selected);
         }
         else
         {
            this._log.warn("Can\'t update, " + dispObj.name + " is not a Label component");
         }
      }
      
      public function getDataLength(data:*, selected:Boolean) : uint
      {
         return 1;
      }
      
      public function remove(dispObj:DisplayObject) : void
      {
         var label:Label = null;
         if(dispObj is Label)
         {
            label = dispObj as Label;
            if(label.parent)
            {
               label.parent.removeChild(dispObj);
            }
            label.removeEventListener(MouseEvent.MOUSE_OUT,this.onRollOut);
            label.removeEventListener(MouseEvent.MOUSE_OVER,this.onRollOver);
         }
      }
      
      public function destroy() : void
      {
         this._grid = null;
         this._shapeIndex = null;
      }
      
      public function renderModificator(childs:Array) : Array
      {
         return childs;
      }
      
      public function eventModificator(msg:Message, functionName:String, args:Array, target:UIComponent) : String
      {
         return functionName;
      }
      
      private function updateBackground(label:Label, index:uint, selected:Boolean) : void
      {
         var shape:Shape = null;
         if(!this._shapeIndex[label])
         {
            shape = new Shape();
            shape.graphics.beginFill(16777215);
            shape.graphics.drawRect(0,0,this._grid.slotWidth,this._grid.slotHeight + 1);
            label.getStrata(0).addChild(shape);
            this._shapeIndex[label] = {
               "trans":new Transform(shape),
               "shape":shape
            };
         }
         else
         {
            this._shapeIndex[label].shape.width = this._grid.slotWidth;
         }
         var t:ColorTransform = !!(index % 2) ? this._bgColor1 : this._bgColor2;
         if(selected && this._selectedColor)
         {
            t = this._selectedColor;
         }
         this._shapeIndex[label].currentColor = t;
         DisplayObject(this._shapeIndex[label].shape).visible = t != null;
         if(t)
         {
            Transform(this._shapeIndex[label].trans).colorTransform = t;
         }
      }
      
      private function onRollOver(e:MouseEvent) : void
      {
         var target:Object = null;
         var label:Label = e.currentTarget as Label;
         if(this._overColor && label.text.length > 0)
         {
            target = this._shapeIndex[label];
            if(target)
            {
               Transform(target.trans).colorTransform = this._overColor;
               DisplayObject(target.shape).visible = true;
            }
         }
      }
      
      private function onRollOut(e:MouseEvent) : void
      {
         var target:Object = null;
         var label:Label = e.currentTarget as Label;
         if(label.text.length > 0)
         {
            target = this._shapeIndex[label];
            if(target)
            {
               if(target.currentColor)
               {
                  Transform(target.trans).colorTransform = target.currentColor;
               }
               DisplayObject(target.shape).visible = target.currentColor != null;
            }
         }
      }
   }
}
