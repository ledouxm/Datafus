package com.ankamagames.dofus.internalDatacenter.sales
{
   import com.ankamagames.dofus.datacenter.items.Item;
   import com.ankamagames.dofus.network.types.game.data.items.ObjectEffects;
   import com.ankamagames.jerakine.interfaces.IDataCenter;
   
   public class OfflineSaleWrapper implements IDataCenter
   {
       
      
      public var index:uint;
      
      public var type:uint;
      
      public var itemId:uint;
      
      public var itemName:String;
      
      public var quantity:uint;
      
      public var kamas:Number;
      
      public var date:uint;
      
      public var effects:ObjectEffects = null;
      
      public function OfflineSaleWrapper()
      {
         super();
      }
      
      public static function create(pIndex:uint, pItemId:uint, pQuantity:uint, pKamas:Number, pDate:uint, pEffects:ObjectEffects) : OfflineSaleWrapper
      {
         var osw:OfflineSaleWrapper = new OfflineSaleWrapper();
         osw.index = pIndex;
         osw.itemId = pItemId;
         osw.itemName = Item.getItemById(osw.itemId).name;
         osw.quantity = pQuantity;
         osw.kamas = pKamas;
         osw.date = pDate;
         osw.effects = pEffects;
         return osw;
      }
   }
}
