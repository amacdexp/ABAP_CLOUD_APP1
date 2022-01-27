@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility:{ extensible: true, dataSources: ['Alias_I_APP1', '_Extension'], elementSuffix: 'YAP', 
                             quota:{ maximumBytes: 1000, maximumFields: 100 } }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APP1: Private View'
--@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity YTS_R_APP1TP as select from YTS_I_APP1 as Alias_I_APP1

  //Extensibility
  association [0..1] to YTS_E_APP1      as _Extension                  on  $projection.Key1 = _Extension.Key1


{
    key Key1 as Key1,
    Cfield1 as Cfield1,
    Cfield2 as Cfield2,
    Cfield3_map1 as Cfield3_map2,
    Ifield1 as Ifield1,
    Ifield2 as Ifield2,
    Ifield3 as Ifield3,
    Curr1   as Curr1,
    Curr2   as Curr2,
    Curr3   as Curr3,
    lastchangedat as lastchangedat,
    locallastchangedat as locallastchangedat

}
