/****** Colors ******/

/* Misc fills */
@land:                  #999;
@builtup:               #444;
@areaopacity:           0.2;

/* For mask layers */
@watermask:             black;
@landmask:              white;

@maskVisible:           white;
@maskHidden:            black;

/* Contour lines */
@contourColor:          #963;
// NOTE: #963 with multiply and opacity 0.6 becomes #c2a385
@contourWidth:          0.7;
@contourWidthMajor:     1.2;
@contourSmooth:         0.5;
@contourFont:           "Liberation Serif Bold Italic";
@contourTextSize:       12;

/* Mountain peaks */
@peakColor:             #643;
@peakFont:              "DejaVu Serif Book"; // <-- TODO: Fix

/* Point features */
@pointFeatureFont:      "Liberation Sans Regular";

/* Hydrography */
@waterline:             #1e6ea3;
@waterfill:             #d1e8f8;

/* Aviation */
@aeroway:               #99a;
@aerowaycase:           #556;

/* Highways and misc transportation */
@transportation:        #069;
@roadcase:              black;
@bridgecase:            black;
@interstate:            #8899EE;
@interstatetunnel:      lighten(@interstate, 10);
@interstatelowzoom:     black;
@trunk:                 #F88;
@trunktunnel:           lighten(@trunk, 10);
@trunklowzoom:          black;
@primary:               #FC8;
@primarytunnel:         lighten(@primary, 10);
@primarylowzoom:        black;
@secondary:             #FF8;
@secondarytunnel:       lighten(@secondary, 10);
@secondarylowzoom:      black;
@smallroad:             white;
@smallroadtunnel:       lighten(@smallroad, 10);
@smallroadlowzoom:      black;
@parking:               #FFFBE0;
@railroad:              #000;
@lightrail:             #888;


/****** NHD Feature Codes (FCODE) ******/

@nhdAreatobeSubmerged:   30700;
@nhdBayInlet:            31200;
@nhdBridge:              31800;
@nhdConnector:           33400;
@nhdCanalDitch:          33600;
@nhdCanalDitch_Aqueduct: 33601;
@nhdCanalDitch_Stormwater: 33603;
@nhdDamWeir:             34300;
@nhdDamWeir_Earthen:     34305;
@nhdDamWeir_Nonearthen:  34306;
@nhdPlaya:               36100;
@nhdFlume:               36200;
@nhdForeshore:           36400;
@nhdGagingStation:       36700;
@nhdGate:                36900;
@nhdHazardZone:          37300;
@nhdIceMass:             37800;
@nhdLakePond:            39000;
@nhdLakePond_Intermittent: 39001;
@nhdLakePond_Perennial:  39004;
@nhdLakePond_Intermittent_HighWaterElevation: 39005;
@nhdLakePond_Intermittent_DateofPhotography: 39006;
@nhdLakePond_Perennial_AverageWaterElevation: 39009;
@nhdLakePond_Perennial_NormalPool: 39010;
@nhdLakePond_Perennial_DateofPhotography: 39011;
@nhdLakePond_Perennial_SpillwayElevation: 39012;
@nhdLockChamber:         39800;
@nhdInundationArea:      40300;
@nhdInundationArea_NotControlled: 40307;
@nhdInundationArea_Controlled: 40308;
@nhdInundationArea_Controlled_Stage_FloodElevation: 40309;
@nhdNonearthenShore:     41100;
@nhdUndergroundConduit:  42000;
@nhdUndergroundConduit_Definite: 42001;
@nhdUndergroundConduit_Indefinite: 42002;
@nhdUndergroundConduit_Approximate: 42003;
@nhdPipeline:            42800;
@nhdPipeline_Aqueduct_AtorNear: 42801;
@nhdPipeline_Aqueduct_Elevated: 42802;
@nhdPipeline_Aqueduct_Underground: 42803;
@nhdPipeline_Aqueduct_Underwater: 42804;
@nhdPipeline_GeneralCase_AtorNear: 42805;
@nhdPipeline_GeneralCase_Elevated: 42806;
@nhdPipeline_GeneralCase_Underground: 42807;
@nhdPipeline_GeneralCase_Underwater: 42808;
@nhdPipeline_Penstock_AtorNear: 42809;
@nhdPipeline_Penstock_Elevated: 42810;
@nhdPipeline_Penstock_Underground: 42811;
@nhdPipeline_Penstock_Underwater: 42812;
@nhdPipeline_Siphon: 42813;
@nhdPipeline_GeneralCase: 42814;
@nhdPipeline_Penstock: 42815;
@nhdPipeline_Aqueduct: 42816;
@nhdPipeline_Stormwater: 42820;
@nhdPipeline_Stormwater_AtorNear: 42821;
@nhdPipeline_Stormwater_Elevated: 42822;
@nhdPipeline_Stormwater_Underground: 42823;
@nhdPipeline_Stormwater_Underwater: 42824;
@nhdRapids:              43100;
@nhdReef:                43400;
@nhdReservoir:           43600;
@nhdReservoir_Aquaculture: 43601;
@nhdReservoir_DecorativePool: 43603;
@nhdReservoir_TailingsPond_Earthen: 43604;
@nhdReservoir_TailingsPond: 43605;
@nhdReservoir_Disposal: 43606;
@nhdReservoir_Evaporator: 43607;
@nhdReservoir_SwimmingPool: 43608;
@nhdReservoir_CoolingPond: 43609;
@nhdReservoir_FiltrationPond: 43610;
@nhdReservoir_SettlingPond: 43611;
@nhdReservoir_SewageTreatmentPond: 43612;
@nhdReservoir_WaterStorage_Nonearthen: 43613;
@nhdReservoir_WaterStorage_Earthen_Hydrograp: 43614;
@nhdReservoir_WaterStorage_Earthen_Hydrograp2: 43615;
@nhdReservoir_WaterStorage: 43617;
@nhdReservoir_Earthen: 43618;
@nhdReservoir_Nonearthen: 43619;
@nhdReservoir_WaterStorage_Perennial: 43621;
@nhdReservoir_Evaporator_Earthen: 43623;
@nhdReservoir_Treatment: 43624;
@nhdReservoir_Disposal_Earthen: 43625;
@nhdReservoir_Disposal_Nonearthen: 43626;
@nhdRock:                44100;
@nhdRock_Abovewater:     44101;
@nhdRock_Underwater:     44102;
@nhdSeaOcean:            44500;
@nhdSinkRise:            45000;
@nhdSpecialUseZone:      45400;
@nhdSpecialUseZone_DumpSite_Operation: 45401;
@nhdSpecialUseZone_DumpSite_Abandon: 45402;
@nhdSpecialUseZone_SpoilArea_Operation: 45403;
@nhdSpecialUseZone_SpoilArea_Abandon: 45404;
@nhdSpillway:            45500;
@nhdSpringSeep:          45800;
@nhdStreamRiver:         46000;
@nhdStreamRiver_Intermittent: 46003;
@nhdStreamRiver_Perennial: 46006;
@nhdStreamRiver_Ephemeral: 46007;
@nhdSubmergedStream:     46100;
@nhdSwampMarsh:          46600;
@nhdSwampMarsh_Intermittent: 46601;
@nhdSwampMarsh_Perennial: 46602;
@nhdTunnel:              47800;
@nhdWall:                48300;
@nhdWash:                48400;
@nhdWaterIntakeOutflow:  48500;
@nhdWaterfall:           48700;
@nhdWell:                48800;
@nhdEstuary:             49300;
@nhdSoundingDatumLine:   50300;
@nhdSoundingDatumLine_Approximate: 50301;
@nhdSoundingDatumLine_Definite: 50302;
@nhdSpecialUseZoneLimit: 53300;
@nhdSpecialUseZoneLimit_Definite: 53301;
@nhdSpecialUseZoneLimit_Indefinite: 53302;
@nhdAreaofComplexChannels: 53700;
@nhdArtificialPath:      55800;
@nhdCoastline:           56600;
@nhdShoreline:           56700;
@nhdLevee:               56800;
