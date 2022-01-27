@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APP1: Private View'
--@Metadata.ignorePropagatedAnnotations: true
--@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YTS_P_APP1 as select from yts_app1  {
    key key1 as Key1,
    cfield1 as Cfield1,
    cfield2 as Cfield2,
    cfield3 as Cfield3_map,
    ifield1 as Ifield1,
    ifield2 as Ifield2,
    ifield3 as Ifield3,
    curr1   as Curr1,
    curr2   as Curr2,
    curr3   as Curr3,
    lastchangedat as lastchangedat,
    locallastchangedat as locallastchangedat
}
