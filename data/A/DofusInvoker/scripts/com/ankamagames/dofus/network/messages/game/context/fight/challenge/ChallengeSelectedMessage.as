package com.ankamagames.dofus.network.messages.game.context.fight.challenge
{
   import com.ankamagames.dofus.network.types.game.context.fight.challenge.ChallengeInformation;
   import com.ankamagames.jerakine.network.CustomDataWrapper;
   import com.ankamagames.jerakine.network.ICustomDataInput;
   import com.ankamagames.jerakine.network.ICustomDataOutput;
   import com.ankamagames.jerakine.network.INetworkMessage;
   import com.ankamagames.jerakine.network.NetworkMessage;
   import com.ankamagames.jerakine.network.utils.FuncTree;
   import flash.utils.ByteArray;
   
   public class ChallengeSelectedMessage extends NetworkMessage implements INetworkMessage
   {
      
      public static const protocolId:uint = 7816;
       
      
      private var _isInitialized:Boolean = false;
      
      public var challengeInformation:ChallengeInformation;
      
      private var _challengeInformationtree:FuncTree;
      
      public function ChallengeSelectedMessage()
      {
         this.challengeInformation = new ChallengeInformation();
         super();
      }
      
      override public function get isInitialized() : Boolean
      {
         return this._isInitialized;
      }
      
      override public function getMessageId() : uint
      {
         return 7816;
      }
      
      public function initChallengeSelectedMessage(challengeInformation:ChallengeInformation = null) : ChallengeSelectedMessage
      {
         this.challengeInformation = challengeInformation;
         this._isInitialized = true;
         return this;
      }
      
      override public function reset() : void
      {
         this.challengeInformation = new ChallengeInformation();
         this._isInitialized = false;
      }
      
      override public function pack(output:ICustomDataOutput) : void
      {
         var data:ByteArray = new ByteArray();
         this.serialize(new CustomDataWrapper(data));
         writePacket(output,this.getMessageId(),data);
      }
      
      override public function unpack(input:ICustomDataInput, length:uint) : void
      {
         this.deserialize(input);
      }
      
      override public function unpackAsync(input:ICustomDataInput, length:uint) : FuncTree
      {
         var tree:FuncTree = new FuncTree();
         tree.setRoot(input);
         this.deserializeAsync(tree);
         return tree;
      }
      
      public function serialize(output:ICustomDataOutput) : void
      {
         this.serializeAs_ChallengeSelectedMessage(output);
      }
      
      public function serializeAs_ChallengeSelectedMessage(output:ICustomDataOutput) : void
      {
         this.challengeInformation.serializeAs_ChallengeInformation(output);
      }
      
      public function deserialize(input:ICustomDataInput) : void
      {
         this.deserializeAs_ChallengeSelectedMessage(input);
      }
      
      public function deserializeAs_ChallengeSelectedMessage(input:ICustomDataInput) : void
      {
         this.challengeInformation = new ChallengeInformation();
         this.challengeInformation.deserialize(input);
      }
      
      public function deserializeAsync(tree:FuncTree) : void
      {
         this.deserializeAsyncAs_ChallengeSelectedMessage(tree);
      }
      
      public function deserializeAsyncAs_ChallengeSelectedMessage(tree:FuncTree) : void
      {
         this._challengeInformationtree = tree.addChild(this._challengeInformationtreeFunc);
      }
      
      private function _challengeInformationtreeFunc(input:ICustomDataInput) : void
      {
         this.challengeInformation = new ChallengeInformation();
         this.challengeInformation.deserializeAsync(this._challengeInformationtree);
      }
   }
}
