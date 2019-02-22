/* ~B!GAVINP~ */

APPEND ~B!GAVINP~
/* Gavin Dismissed - happy enough */
IF ~Global("GavinJoined","GLOBAL",1) !HappinessLT(Myself,-290)~ THEN BEGIN GavinLeaveGroup
SAY @0
++ @1 + BGavinPleaseStay
++ @2 DO ~SetGlobal("GavinJoined","GLOBAL",0)~+ GavinLeaveGroup1
END

/* Gavin Dismissed - unhappy */
IF ~Global("GavinJoined","GLOBAL",1) HappinessLT("B!GAVIN",-290)~ THEN BEGIN BGavinLeaveGroupUnhappy
SAY @3
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END
 
/* Please Stay */
IF ~~ THEN BEGIN BGavinPleaseStay
SAY @4
IF ~~ THEN DO ~SetGlobal("B!GavinJoined","GLOBAL",1) JoinParty()~ EXIT
END

/* Farewell */
IF ~~ THEN BEGIN BGavinFarewell
SAY @5
IF ~~ THEN DO ~SetGlobal("B!GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

//Gavin Rejoin
IF ~Global("GavinJoined","GLOBAL",0) !Global("B!GavinBassilusQuestAlone","GLOBAL",1) !Global("B!GavinMutaminQuestAlone","GLOBAL",1) !Global("B!GavinBodyThiefQuestAlone","GLOBAL",1)~ THEN BEGIN BGavinComeBack
SAY @6
++ @7 DO ~SetGlobal("GavinJoined","GLOBAL",1)
JoinParty()~ EXIT
++ @8 EXIT
END

IF ~~ THEN BEGIN GavinLeaveGroup1
SAY @9
IF ~False()~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
IF ~!AreaCheck("%GnollStronghold%") /* Not a dangerous area */
!AreaCheck("%GnollStronghold_XvartCave%")
!AreaCheck("%GnollStronghold_TomeCave%")
!AreaCheck("%GnollStronghold_CrawlerCave%")
!AreaCheck("%NashkelMines_L1%")
!AreaCheck("%NashkelMines_L2%")
!AreaCheck("%NashkelMines_L3%")
!AreaCheck("%NashkelMines_L4%")
!AreaCheck("%NashkelMines_MulaheysCave%")
!AreaCheck("%BanditCamp%")
!AreaCheck("%BanditCamp_RaemonsTent%")
!AreaCheck("%BanditCamp_GnollCave%")
!AreaCheck("%Ulcaster%")
!AreaCheck("%UlcasterRuins%")
!AreaCheck("%FirewineBridge%")
!AreaCheck("%FirewineRuins%")
!AreaCheck("%MutaminsGarden%")
!AreaCheck("%CloakwoodDruids_PetersCave%")
!AreaCheck("%CloakwoodWyverns_WyvernCave%")
!AreaCheck("%Lighthouse_BlackAlaricsCave%")
!AreaCheck("%FishingVillage_AnkhegPit%")
!AreaCheck("%CloakwoodNestSpiderNest%")
!AreaCheck("%CloakwoodMines_L1%")
!AreaCheck("%CloakwoodMines_L2%")
!AreaCheck("%CloakwoodMines_L3%")
!AreaCheck("%CloakwoodMines_L4%")
!AreaCheck("%Candlekeep_Catacombs_L1%")
!AreaCheck("%Candlekeep_Catacombs_L2%")
!AreaCheck("%CandlekeepCaves%")
!AreaCheck("%DurlagsTower%")
!AreaCheck("%DurlagsTower_Cellar%")
!AreaCheck("%DurlagsTower_L1%")
!AreaCheck("%DurlagsTower_L2%")
!AreaCheck("%DurlagsTower_L3%")
!AreaCheck("%DurlagsTower_L4%")
!AreaCheck("%DurlagsTower_Chessboard%")
!AreaCheck("%DurlagsTower_IceChamber%")
!AreaCheck("%DurlagsTower_FireChamber%")
!AreaCheck("%DurlagsTower_AirChamber%")
!AreaCheck("%DurlagsTower_EarthChamber%")
!AreaCheck("%DurlagsTower_D1%")
!AreaCheck("%DurlagsTower_D2%")
!AreaCheck("%DurlagsTower_D3%")
!AreaCheck("%DurlagsTower_D4%")
!AreaCheck("%DurlagsTower_CompassRoom%")
!AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%UlgothsBeard_DemonsChamber%")
!AreaCheck("%UlgothsBeard_Storehouse%")
!AreaCheck("%IceIsland%")
!AreaCheck("%IceIslandMaze_L1%")
!AreaCheck("%IceIslandMaze_L2%")
!AreaCheck("%IsleofBalduranS%")
!AreaCheck("%WerewolfCaverns%")
!AreaCheck("%IsleofBalduranNShip_D1%")
!AreaCheck("%IsleofBalduranNShip_D2%")
!AreaCheck("%IsleofBalduranNShip_D3%")
!AreaCheck("%IsleofBalduranNShip_D4%")
!AreaCheck("%IsleofBalduranNDradeelsHouse%")
!AreaCheck("%Farmlands%")
!AreaCheck("%SWBaldursGate_FlamingFistHQ_Cellar%")
!AreaCheck("%SWBaldursGate_FlamingFistHQ_L1%")
!AreaCheck("%SWBaldursGate_FlamingFistHQ_L2%")
!AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
!AreaCheck("%SWBaldursGate_YeOldeInn_L2%")
!AreaCheck("%BaldursGateDocks_OgreMagiHouse_L1%")
!AreaCheck("%BaldursGateDocks_OgreMagiHouse_L2%")
!AreaCheck("%BaldursGateDocks_BasiliskWarehouse%")
!AreaCheck("%CentralBaldursGate_PoultryStore%")
!AreaCheck("%BaldursGateDocks_IronThrone_Cellar%")
!AreaCheck("%BaldursGateDocks_IronThroneRoof%")
!AreaCheck("%Undercity%")
!AreaCheck("%Undercity_TempleofBhaal%")
!AreaCheck("%WBaldursGate_RagefastsHouse%")
!AreaCheck("%NBaldursGate_RamazithsTower_L1%")
!AreaCheck("%NBaldursGate_RamazithsTower_L6%")
!AreaCheck("%NBaldursGate_RamazithsTower_L2%")
!AreaCheck("%NBaldursGate_RamazithsTower_L3%")
!AreaCheck("%NBaldursGate_RamazithsTower_L4%")
!AreaCheck("%NBaldursGate_RamazithsTower_L5%")
!AreaCheck("%ThievesMaze%")
!AreaCheck("%NWBaldursGate_DegrodelsHouse%")
!AreaCheck("%WSewers%")
!AreaCheck("%CentralSewers%")
!AreaCheck("%ESewers%")
~ THEN REPLY @10 GOTO BGavinWaitSomewhereSafe
IF ~OR(84)
AreaCheck("%GnollStronghold%") /* dangerous area */
AreaCheck("%GnollStronghold_XvartCave%")
AreaCheck("%GnollStronghold_TomeCave%")
AreaCheck("%GnollStronghold_CrawlerCave%")
AreaCheck("%NashkelMines_L1%")
AreaCheck("%NashkelMines_L2%")
AreaCheck("%NashkelMines_L3%")
AreaCheck("%NashkelMines_L4%")
AreaCheck("%NashkelMines_MulaheysCave%")
AreaCheck("%BanditCamp%")
AreaCheck("%BanditCamp_RaemonsTent%")
AreaCheck("%BanditCamp_GnollCave%")
AreaCheck("%Ulcaster%")
AreaCheck("%UlcasterRuins%")
AreaCheck("%FirewineBridge%")
AreaCheck("%FirewineRuins%")
AreaCheck("%MutaminsGarden%")
AreaCheck("%CloakwoodDruids_PetersCave%")
AreaCheck("%CloakwoodWyverns_WyvernCave%")
AreaCheck("%Lighthouse_BlackAlaricsCave%")
AreaCheck("%FishingVillage_AnkhegPit%")
AreaCheck("%CloakwoodNestSpiderNest%")
AreaCheck("%CloakwoodMines_L1%")
AreaCheck("%CloakwoodMines_L2%")
AreaCheck("%CloakwoodMines_L3%")
AreaCheck("%CloakwoodMines_L4%")
AreaCheck("%Candlekeep_Catacombs_L1%")
AreaCheck("%Candlekeep_Catacombs_L2%")
AreaCheck("%CandlekeepCaves%")
AreaCheck("%DurlagsTower%")
AreaCheck("%DurlagsTower_Cellar%")
AreaCheck("%DurlagsTower_L1%")
AreaCheck("%DurlagsTower_L2%")
AreaCheck("%DurlagsTower_L3%")
AreaCheck("%DurlagsTower_L4%")
AreaCheck("%DurlagsTower_Chessboard%")
AreaCheck("%DurlagsTower_IceChamber%")
AreaCheck("%DurlagsTower_FireChamber%")
AreaCheck("%DurlagsTower_AirChamber%")
AreaCheck("%DurlagsTower_EarthChamber%")
AreaCheck("%DurlagsTower_D1%")
AreaCheck("%DurlagsTower_D2%")
AreaCheck("%DurlagsTower_D3%")
AreaCheck("%DurlagsTower_D4%")
AreaCheck("%DurlagsTower_CompassRoom%")
AreaCheck("%DurlagsTower_DemonknightsChamber%")
AreaCheck("%UlgothsBeard_DemonsChamber%")
AreaCheck("%UlgothsBeard_Storehouse%")
AreaCheck("%IceIsland%")
AreaCheck("%IceIslandMaze_L1%")
AreaCheck("%IceIslandMaze_L2%")
AreaCheck("%IsleofBalduranS%")
AreaCheck("%WerewolfCaverns%")
AreaCheck("%IsleofBalduranNShip_D1%")
AreaCheck("%IsleofBalduranNShip_D2%")
AreaCheck("%IsleofBalduranNShip_D3%")
AreaCheck("%IsleofBalduranNShip_D4%")
AreaCheck("%IsleofBalduranNDradeelsHouse%")
AreaCheck("%Farmlands%")
AreaCheck("%SWBaldursGate_FlamingFistHQ_Cellar%")
AreaCheck("%SWBaldursGate_FlamingFistHQ_L1%")
AreaCheck("%SWBaldursGate_FlamingFistHQ_L2%")
AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
AreaCheck("%SWBaldursGate_YeOldeInn_L2%")
AreaCheck("%BaldursGateDocks_OgreMagiHouse_L1%")
AreaCheck("%BaldursGateDocks_OgreMagiHouse_L2%")
AreaCheck("%BaldursGateDocks_BasiliskWarehouse%")
AreaCheck("%CentralBaldursGate_PoultryStore%")
AreaCheck("%BaldursGateDocks_IronThrone_Cellar%")
AreaCheck("%BaldursGateDocks_IronThroneRoof%")
AreaCheck("%Undercity%")
AreaCheck("%Undercity_TempleofBhaal%")
AreaCheck("%WBaldursGate_RagefastsHouse%")
AreaCheck("%NBaldursGate_RamazithsTower_L1%")
AreaCheck("%NBaldursGate_RamazithsTower_L6%")
AreaCheck("%NBaldursGate_RamazithsTower_L2%")
AreaCheck("%NBaldursGate_RamazithsTower_L3%")
AreaCheck("%NBaldursGate_RamazithsTower_L4%")
AreaCheck("%NBaldursGate_RamazithsTower_L5%")
AreaCheck("%ThievesMaze%")
AreaCheck("%NWBaldursGate_DegrodelsHouse%")
AreaCheck("%WSewers%")
AreaCheck("%CentralSewers%")
AreaCheck("%ESewers%")
~ THEN REPLY @10 GOTO BGavinWaitSomewhereDangerous
IF ~Global("B!GavinDrawbridge","GLOBAL",1)~ THEN REPLY @11 GOTO BGavinWaitBaldursGate
IF ~~ THEN REPLY @12 GOTO BGavinWaitTemple
IF ~~ THEN REPLY @13 GOTO BGavinFarewell
IF ~~ THEN REPLY @14 GOTO BGavinPleaseStay
END

IF ~~ THEN BEGIN BGavinWaitSomewhereDangerous
SAY @15
IF ~~ THEN REPLY @13 GOTO BGavinFarewell
IF ~~ THEN REPLY @16 GOTO BGavinPleaseStay
IF ~OR(59)
AreaCheck("%GnollStronghold%")
AreaCheck("%GnollStronghold_XvartCave%")
AreaCheck("%GnollStronghold_TomeCave%")
AreaCheck("%GnollStronghold_CrawlerCave%")
AreaCheck("%NashkelMines_L1%")
AreaCheck("%NashkelMines_L2%")
AreaCheck("%NashkelMines_L3%")
AreaCheck("%NashkelMines_L4%")
AreaCheck("%NashkelMines_MulaheysCave%")
AreaCheck("%BanditCamp%")
AreaCheck("%BanditCamp_RaemonsTent%")
AreaCheck("%BanditCamp_GnollCave%")
AreaCheck("%Ulcaster%")
AreaCheck("%UlcasterRuins%")
AreaCheck("%FirewineBridge%")
AreaCheck("%FirewineRuins%")
AreaCheck("%MutaminsGarden%")
AreaCheck("%CloakwoodDruids_PetersCave%")
AreaCheck("%CloakwoodWyverns_WyvernCave%")
AreaCheck("%Lighthouse_BlackAlaricsCave%")
AreaCheck("%FishingVillage_AnkhegPit%")
AreaCheck("%CloakwoodNestSpiderNest%")
AreaCheck("%CloakwoodMines_L1%")
AreaCheck("%CloakwoodMines_L2%")
AreaCheck("%CloakwoodMines_L3%")
AreaCheck("%CloakwoodMines_L4%")
AreaCheck("%Candlekeep_Catacombs_L1%")
AreaCheck("%Candlekeep_Catacombs_L2%")
AreaCheck("%CandlekeepCaves%")
AreaCheck("%DurlagsTower%")
AreaCheck("%DurlagsTower_Cellar%")
AreaCheck("%DurlagsTower_L1%")
AreaCheck("%DurlagsTower_L2%")
AreaCheck("%DurlagsTower_L3%")
AreaCheck("%DurlagsTower_L4%")
AreaCheck("%DurlagsTower_Chessboard%")
AreaCheck("%DurlagsTower_IceChamber%")
AreaCheck("%DurlagsTower_FireChamber%")
AreaCheck("%DurlagsTower_AirChamber%")
AreaCheck("%DurlagsTower_EarthChamber%")
AreaCheck("%DurlagsTower_D1%")
AreaCheck("%DurlagsTower_D2%")
AreaCheck("%DurlagsTower_D3%")
AreaCheck("%DurlagsTower_D4%")
AreaCheck("%DurlagsTower_CompassRoom%")
AreaCheck("%DurlagsTower_DemonknightsChamber%")
AreaCheck("%UlgothsBeard_DemonsChamber%")
AreaCheck("%UlgothsBeard_Storehouse%")
AreaCheck("%IceIsland%")
AreaCheck("%IceIslandMaze_L1%")
AreaCheck("%IceIslandMaze_L2%")
AreaCheck("%IsleofBalduranS%")
AreaCheck("%WerewolfCaverns%")
AreaCheck("%IsleofBalduranNShip_D1%")
AreaCheck("%IsleofBalduranNShip_D2%")
AreaCheck("%IsleofBalduranNShip_D3%")
AreaCheck("%IsleofBalduranNShip_D4%")
AreaCheck("%IsleofBalduranNDradeelsHouse%")
AreaCheck("%Farmlands%")
~ THEN REPLY @17 GOTO BGavinSafeHavenTemple
  IF ~OR(25)
AreaCheck("%SWBaldursGate_FlamingFistHQ_Cellar%")
AreaCheck("%SWBaldursGate_FlamingFistHQ_L1%")
AreaCheck("%SWBaldursGate_FlamingFistHQ_L2%")
AreaCheck("%SWBaldursGate_YeOldeInn_L1%")
AreaCheck("%SWBaldursGate_YeOldeInn_L2%")
AreaCheck("%BaldursGateDocks_OgreMagiHouse_L1%")
AreaCheck("%BaldursGateDocks_OgreMagiHouse_L2%")
AreaCheck("%BaldursGateDocks_BasiliskWarehouse%")
AreaCheck("%CentralBaldursGate_PoultryStore%")
AreaCheck("%BaldursGateDocks_IronThrone_Cellar%")
AreaCheck("%BaldursGateDocks_IronThroneRoof%")
AreaCheck("%Undercity%")
AreaCheck("%Undercity_TempleofBhaal%")
AreaCheck("%WBaldursGate_RagefastsHouse%")
AreaCheck("%NBaldursGate_RamazithsTower_L1%")
AreaCheck("%NBaldursGate_RamazithsTower_L6%")
AreaCheck("%NBaldursGate_RamazithsTower_L2%")
AreaCheck("%NBaldursGate_RamazithsTower_L3%")
AreaCheck("%NBaldursGate_RamazithsTower_L4%")
AreaCheck("%NBaldursGate_RamazithsTower_L5%")
AreaCheck("%ThievesMaze%")
AreaCheck("%NWBaldursGate_DegrodelsHouse%")
AreaCheck("%WSewers%")
AreaCheck("%CentralSewers%")
AreaCheck("%ESewers%")
~ THEN REPLY @18 GOTO BGavinSafeHavenBaldursGate
END

IF ~~ THEN BEGIN BGavinWaitSomewhereSafe
SAY @19
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT)~ EXIT
END

IF ~~ THEN BEGIN BGavinWaitBaldursGate
SAY @20
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",595,495,0)~ EXIT
END

IF ~~ THEN BEGIN BGavinSafeHavenBaldursGate
SAY @21
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",595,495,0)~ EXIT
END

IF ~~ THEN BEGIN BGavinWaitTemple
SAY @22
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeAreaMove("%Temple%",728,1474,0)~ EXIT
END

IF ~~ THEN BEGIN BGavinSafeHavenTemple
SAY @23
IF ~~ THEN DO ~SetGlobal("GavinJoined","GLOBAL",0) ChangeAIScript("",DEFAULT) EscapeAreaMove("%Temple%",728,1474,0)~ EXIT
END


END
