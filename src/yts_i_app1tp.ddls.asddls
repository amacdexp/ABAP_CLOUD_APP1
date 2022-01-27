@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility:{ extensible: true, dataSources: ['Alias_R_APP1TP'], elementSuffix: 'YAP', 
                             quota:{ maximumBytes: 1000, maximumFields: 100 } }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APP1: Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{ serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }
define root view entity YTS_I_APP1TP provider contract transactional_interface
  as projection on YTS_R_APP1TP as Alias_R_APP1TP

{
    key Key1 as Key1,
    Cfield1 as Cfield1,
    Cfield2 as Cfield2,
    Cfield3_map2 as Cfield3_map3,
    Ifield1 as Ifield1,
    Ifield2 as Ifield2,
    Curr1   as Curr1,
    Curr2   as Curr2,
    Curr3   as Curr3,
    lastchangedat as lastchangedat,
    locallastchangedat as locallastchangedat
}
