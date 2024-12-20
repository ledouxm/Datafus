package com.ankamagames.dofus.logic.common.managers
{
   import com.ankamagames.berilia.managers.KernelEventsManager;
   import com.ankamagames.dofus.internalDatacenter.social.TaxCollectorWrapper;
   import com.ankamagames.dofus.logic.game.common.managers.SocialEntitiesManager;
   import com.ankamagames.dofus.misc.lists.HookList;
   
   public class HyperlinkTaxCollectorCollected
   {
       
      
      public function HyperlinkTaxCollectorCollected()
      {
         super();
      }
      
      public static function showCollectedTaxCollector(pCollectedTaxCollectorId:Number) : void
      {
         var tc:TaxCollectorWrapper = SocialEntitiesManager.getInstance().collectedTaxCollectors[pCollectedTaxCollectorId];
         if(tc)
         {
            KernelEventsManager.getInstance().processCallback(HookList.ShowCollectedTaxCollector,tc);
         }
      }
      
      public static function rollOver(pX:int, pY:int, pTaxCollectorId:Number) : void
      {
      }
   }
}
