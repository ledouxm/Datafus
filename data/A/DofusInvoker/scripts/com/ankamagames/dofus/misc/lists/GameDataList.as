package com.ankamagames.dofus.misc.lists
{
   import com.ankamagames.dofus.datacenter.abuse.AbuseReasons;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentGift;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentOrder;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentRank;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentRankJntGift;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentSide;
   import com.ankamagames.dofus.datacenter.alignments.AlignmentTitle;
   import com.ankamagames.dofus.datacenter.alliance.AllianceRank;
   import com.ankamagames.dofus.datacenter.alliance.AllianceRankNameSuggestion;
   import com.ankamagames.dofus.datacenter.alliance.AllianceRight;
   import com.ankamagames.dofus.datacenter.alliance.AllianceRightGroup;
   import com.ankamagames.dofus.datacenter.almanax.AlmanaxCalendar;
   import com.ankamagames.dofus.datacenter.alterations.Alteration;
   import com.ankamagames.dofus.datacenter.alterations.AlterationCategory;
   import com.ankamagames.dofus.datacenter.ambientSounds.PlaylistSound;
   import com.ankamagames.dofus.datacenter.appearance.Appearance;
   import com.ankamagames.dofus.datacenter.appearance.CreatureBoneOverride;
   import com.ankamagames.dofus.datacenter.appearance.CreatureBoneType;
   import com.ankamagames.dofus.datacenter.appearance.Ornament;
   import com.ankamagames.dofus.datacenter.appearance.SkinMapping;
   import com.ankamagames.dofus.datacenter.appearance.SkinPosition;
   import com.ankamagames.dofus.datacenter.appearance.Title;
   import com.ankamagames.dofus.datacenter.appearance.TitleCategory;
   import com.ankamagames.dofus.datacenter.arena.ArenaLeague;
   import com.ankamagames.dofus.datacenter.arena.ArenaLeagueReward;
   import com.ankamagames.dofus.datacenter.arena.ArenaLeagueSeason;
   import com.ankamagames.dofus.datacenter.bonus.Bonus;
   import com.ankamagames.dofus.datacenter.bonus.MonsterDropChanceBonus;
   import com.ankamagames.dofus.datacenter.bonus.MonsterStarRateBonus;
   import com.ankamagames.dofus.datacenter.bonus.MonsterXPBonus;
   import com.ankamagames.dofus.datacenter.bonus.MountBonus;
   import com.ankamagames.dofus.datacenter.bonus.QuestKamasBonus;
   import com.ankamagames.dofus.datacenter.bonus.QuestXPBonus;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusAreaCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusEquippedItemCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusMonsterCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusMonsterFamilyCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusQuestCategoryCriterion;
   import com.ankamagames.dofus.datacenter.bonus.criterion.BonusSubAreaCriterion;
   import com.ankamagames.dofus.datacenter.breach.BreachDungeonModificator;
   import com.ankamagames.dofus.datacenter.breach.BreachInfinityLevel;
   import com.ankamagames.dofus.datacenter.breach.BreachWorldMapCoordinate;
   import com.ankamagames.dofus.datacenter.breach.BreachWorldMapSector;
   import com.ankamagames.dofus.datacenter.breeds.Breed;
   import com.ankamagames.dofus.datacenter.breeds.BreedRole;
   import com.ankamagames.dofus.datacenter.breeds.BreedRoleByBreed;
   import com.ankamagames.dofus.datacenter.breeds.Head;
   import com.ankamagames.dofus.datacenter.challenges.Challenge;
   import com.ankamagames.dofus.datacenter.characteristics.Characteristic;
   import com.ankamagames.dofus.datacenter.characteristics.CharacteristicCategory;
   import com.ankamagames.dofus.datacenter.collection.Collectable;
   import com.ankamagames.dofus.datacenter.collection.Collection;
   import com.ankamagames.dofus.datacenter.communication.CensoredWord;
   import com.ankamagames.dofus.datacenter.communication.ChatChannel;
   import com.ankamagames.dofus.datacenter.communication.Emoticon;
   import com.ankamagames.dofus.datacenter.communication.InfoMessage;
   import com.ankamagames.dofus.datacenter.communication.NamingRule;
   import com.ankamagames.dofus.datacenter.communication.Smiley;
   import com.ankamagames.dofus.datacenter.communication.SmileyCategory;
   import com.ankamagames.dofus.datacenter.communication.SmileyPack;
   import com.ankamagames.dofus.datacenter.documents.Document;
   import com.ankamagames.dofus.datacenter.effects.Effect;
   import com.ankamagames.dofus.datacenter.effects.EffectInstance;
   import com.ankamagames.dofus.datacenter.effects.EvolutiveEffect;
   import com.ankamagames.dofus.datacenter.externalnotifications.ExternalNotification;
   import com.ankamagames.dofus.datacenter.feature.OptionalFeature;
   import com.ankamagames.dofus.datacenter.guild.GuildChestTab;
   import com.ankamagames.dofus.datacenter.guild.GuildRank;
   import com.ankamagames.dofus.datacenter.guild.GuildRankNameSuggestion;
   import com.ankamagames.dofus.datacenter.guild.GuildRight;
   import com.ankamagames.dofus.datacenter.guild.GuildRightGroup;
   import com.ankamagames.dofus.datacenter.guild.GuildTag;
   import com.ankamagames.dofus.datacenter.guild.GuildTagsType;
   import com.ankamagames.dofus.datacenter.houses.HavenbagFurniture;
   import com.ankamagames.dofus.datacenter.houses.HavenbagTheme;
   import com.ankamagames.dofus.datacenter.houses.House;
   import com.ankamagames.dofus.datacenter.interactives.Interactive;
   import com.ankamagames.dofus.datacenter.interactives.Sign;
   import com.ankamagames.dofus.datacenter.interactives.StealthBones;
   import com.ankamagames.dofus.datacenter.items.EvolutiveItemType;
   import com.ankamagames.dofus.datacenter.items.Item;
   import com.ankamagames.dofus.datacenter.items.ItemSet;
   import com.ankamagames.dofus.datacenter.items.ItemType;
   import com.ankamagames.dofus.datacenter.items.LegendaryPowerCategory;
   import com.ankamagames.dofus.datacenter.items.RandomDropGroup;
   import com.ankamagames.dofus.datacenter.items.RandomDropItem;
   import com.ankamagames.dofus.datacenter.items.Weapon;
   import com.ankamagames.dofus.datacenter.jobs.Job;
   import com.ankamagames.dofus.datacenter.jobs.Recipe;
   import com.ankamagames.dofus.datacenter.jobs.Skill;
   import com.ankamagames.dofus.datacenter.livingObjects.LivingObjectSkinJntMood;
   import com.ankamagames.dofus.datacenter.livingObjects.SpeakingItemText;
   import com.ankamagames.dofus.datacenter.livingObjects.SpeakingItemsTrigger;
   import com.ankamagames.dofus.datacenter.misc.BreachBoss;
   import com.ankamagames.dofus.datacenter.misc.BreachPrize;
   import com.ankamagames.dofus.datacenter.misc.CharacterXPMapping;
   import com.ankamagames.dofus.datacenter.misc.LuaFormula;
   import com.ankamagames.dofus.datacenter.misc.Month;
   import com.ankamagames.dofus.datacenter.misc.Pack;
   import com.ankamagames.dofus.datacenter.misc.Subhint;
   import com.ankamagames.dofus.datacenter.misc.Tips;
   import com.ankamagames.dofus.datacenter.monsters.Companion;
   import com.ankamagames.dofus.datacenter.monsters.CompanionCharacteristic;
   import com.ankamagames.dofus.datacenter.monsters.CompanionSpell;
   import com.ankamagames.dofus.datacenter.monsters.Monster;
   import com.ankamagames.dofus.datacenter.monsters.MonsterDrop;
   import com.ankamagames.dofus.datacenter.monsters.MonsterDropCoefficient;
   import com.ankamagames.dofus.datacenter.monsters.MonsterGrade;
   import com.ankamagames.dofus.datacenter.monsters.MonsterMiniBoss;
   import com.ankamagames.dofus.datacenter.monsters.MonsterRace;
   import com.ankamagames.dofus.datacenter.monsters.MonsterSuperRace;
   import com.ankamagames.dofus.datacenter.mounts.Mount;
   import com.ankamagames.dofus.datacenter.mounts.MountBehavior;
   import com.ankamagames.dofus.datacenter.mounts.MountBone;
   import com.ankamagames.dofus.datacenter.mounts.MountFamily;
   import com.ankamagames.dofus.datacenter.mounts.RideFood;
   import com.ankamagames.dofus.datacenter.notifications.Notification;
   import com.ankamagames.dofus.datacenter.npcs.Npc;
   import com.ankamagames.dofus.datacenter.npcs.NpcAction;
   import com.ankamagames.dofus.datacenter.npcs.NpcMessage;
   import com.ankamagames.dofus.datacenter.npcs.TaxCollectorFirstname;
   import com.ankamagames.dofus.datacenter.npcs.TaxCollectorName;
   import com.ankamagames.dofus.datacenter.optionalFeatures.Modster;
   import com.ankamagames.dofus.datacenter.playlists.Playlist;
   import com.ankamagames.dofus.datacenter.popup.PopupButton;
   import com.ankamagames.dofus.datacenter.popup.PopupInformation;
   import com.ankamagames.dofus.datacenter.progression.ActivitySuggestion;
   import com.ankamagames.dofus.datacenter.progression.ActivitySuggestionsCategory;
   import com.ankamagames.dofus.datacenter.progression.FeatureDescription;
   import com.ankamagames.dofus.datacenter.quest.Achievement;
   import com.ankamagames.dofus.datacenter.quest.AchievementCategory;
   import com.ankamagames.dofus.datacenter.quest.AchievementObjective;
   import com.ankamagames.dofus.datacenter.quest.AchievementReward;
   import com.ankamagames.dofus.datacenter.quest.Quest;
   import com.ankamagames.dofus.datacenter.quest.QuestCategory;
   import com.ankamagames.dofus.datacenter.quest.QuestObjective;
   import com.ankamagames.dofus.datacenter.quest.QuestObjectiveType;
   import com.ankamagames.dofus.datacenter.quest.QuestStep;
   import com.ankamagames.dofus.datacenter.quest.QuestStepRewards;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveBringItemToNpc;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveBringSoulToNpc;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveCraftItem;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveDiscoverMap;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveDiscoverSubArea;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveDuelSpecificPlayer;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveFightMonster;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveFightMonstersOnMap;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveFreeForm;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveGoToNpc;
   import com.ankamagames.dofus.datacenter.quest.objectives.QuestObjectiveMultiFightMonster;
   import com.ankamagames.dofus.datacenter.quest.treasureHunt.LegendaryTreasureHunt;
   import com.ankamagames.dofus.datacenter.quest.treasureHunt.PointOfInterest;
   import com.ankamagames.dofus.datacenter.quest.treasureHunt.PointOfInterestCategory;
   import com.ankamagames.dofus.datacenter.servers.Server;
   import com.ankamagames.dofus.datacenter.servers.ServerCommunity;
   import com.ankamagames.dofus.datacenter.servers.ServerGameType;
   import com.ankamagames.dofus.datacenter.servers.ServerLang;
   import com.ankamagames.dofus.datacenter.servers.ServerPopulation;
   import com.ankamagames.dofus.datacenter.servers.ServerSeason;
   import com.ankamagames.dofus.datacenter.social.EmblemBackground;
   import com.ankamagames.dofus.datacenter.social.EmblemSymbol;
   import com.ankamagames.dofus.datacenter.social.EmblemSymbolCategory;
   import com.ankamagames.dofus.datacenter.social.SocialRight;
   import com.ankamagames.dofus.datacenter.social.SocialRightGroup;
   import com.ankamagames.dofus.datacenter.sounds.SoundAnimation;
   import com.ankamagames.dofus.datacenter.sounds.SoundBones;
   import com.ankamagames.dofus.datacenter.sounds.SoundUi;
   import com.ankamagames.dofus.datacenter.sounds.SoundUiElement;
   import com.ankamagames.dofus.datacenter.sounds.SoundUiHook;
   import com.ankamagames.dofus.datacenter.spells.FinishMove;
   import com.ankamagames.dofus.datacenter.spells.Spell;
   import com.ankamagames.dofus.datacenter.spells.SpellConversion;
   import com.ankamagames.dofus.datacenter.spells.SpellLevel;
   import com.ankamagames.dofus.datacenter.spells.SpellState;
   import com.ankamagames.dofus.datacenter.spells.SpellType;
   import com.ankamagames.dofus.datacenter.world.Area;
   import com.ankamagames.dofus.datacenter.world.Dungeon;
   import com.ankamagames.dofus.datacenter.world.Hint;
   import com.ankamagames.dofus.datacenter.world.HintCategory;
   import com.ankamagames.dofus.datacenter.world.MapPosition;
   import com.ankamagames.dofus.datacenter.world.MapReference;
   import com.ankamagames.dofus.datacenter.world.MapScrollAction;
   import com.ankamagames.dofus.datacenter.world.SubArea;
   import com.ankamagames.dofus.datacenter.world.SuperArea;
   import com.ankamagames.dofus.datacenter.world.WorldMap;
   
   public class GameDataList
   {
      
      public static const CLASSES:Vector.<Class> = new <Class>[Server,ServerCommunity,ServerGameType,ServerPopulation,ServerLang,Monster,MonsterGrade,MonsterRace,MonsterSuperRace,MonsterDrop,Notification,Spell,Effect,EvolutiveEffect,EffectInstance,SpellLevel,SpellType,SpellState,Breed,BreedRole,BreedRoleByBreed,Head,Characteristic,CharacteristicCategory,SuperArea,Area,WorldMap,SubArea,Hint,HintCategory,MapPosition,MapReference,MapScrollAction,Item,ChatChannel,Weapon,Job,Skill,Recipe,ItemSet,Month,Npc,NpcAction,NpcMessage,InfoMessage,TaxCollectorFirstname,TaxCollectorName,Challenge,AlignmentGift,AlignmentOrder,AlignmentRank,AlignmentRankJntGift,AlignmentSide,AlignmentTitle,House,GuildRank,EmblemBackground,EmblemSymbol,EmblemSymbolCategory,Interactive,Sign,ItemType,EvolutiveItemType,Emoticon,Smiley,SmileyPack,SmileyCategory,Quest,QuestCategory,QuestStep,QuestStepRewards,QuestObjective,QuestObjectiveType,QuestObjectiveCraftItem,QuestObjectiveBringItemToNpc,QuestObjectiveBringSoulToNpc,QuestObjectiveDiscoverMap,QuestObjectiveDiscoverSubArea,QuestObjectiveDuelSpecificPlayer,QuestObjectiveFightMonster,QuestObjectiveFightMonstersOnMap,QuestObjectiveMultiFightMonster,QuestObjectiveFreeForm,QuestObjectiveGoToNpc,Achievement,AchievementCategory,AchievementObjective,AchievementReward,PointOfInterest,PointOfInterestCategory,LegendaryTreasureHunt,Mount,MountBone,MountBehavior,MountFamily,RideFood,Document,Appearance,SkinMapping,SpeakingItemsTrigger,SpeakingItemText,LivingObjectSkinJntMood,AbuseReasons,Tips,Pack,OptionalFeature,CensoredWord,NamingRule,Title,TitleCategory,Ornament,Dungeon,MonsterMiniBoss,SoundAnimation,SoundBones,StealthBones,ExternalNotification,AlmanaxCalendar,SoundUi,SoundUiElement,SoundUiHook,SkinPosition,Companion,CompanionCharacteristic,CompanionSpell,CreatureBoneOverride,CreatureBoneType,Playlist,PlaylistSound,HavenbagFurniture,HavenbagTheme,Bonus,MonsterXPBonus,QuestXPBonus,QuestKamasBonus,MountBonus,MonsterStarRateBonus,MonsterDropChanceBonus,BonusCriterion,BonusMonsterCriterion,BonusMonsterFamilyCriterion,BonusSubAreaCriterion,BonusAreaCriterion,BonusQuestCategoryCriterion,BonusEquippedItemCriterion,FinishMove,Subhint,LuaFormula,ArenaLeague,ArenaLeagueReward,ArenaLeagueSeason,BreachPrize,BreachBoss,ServerSeason,MonsterDropCoefficient,LegendaryPowerCategory,CharacterXPMapping,SpellConversion,BreachWorldMapCoordinate,BreachDungeonModificator,BreachWorldMapSector,BreachInfinityLevel,RandomDropGroup,RandomDropItem,FeatureDescription,PopupInformation,PopupButton,ActivitySuggestion,ActivitySuggestionsCategory,GuildTag,GuildTagsType,SocialRightGroup,GuildRightGroup,AllianceRightGroup,SocialRight,GuildRight,AllianceRight,GuildRankNameSuggestion,AllianceRankNameSuggestion,AllianceRank,Collection,Collectable,GuildChestTab,Modster,Alteration,AlterationCategory];
       
      
      public function GameDataList()
      {
         super();
      }
   }
}
