@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility.extensible: true
@AbapCatalog.extensibility.dataSources: ['_Extension'] 
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APP1: Core View'
--@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{ serviceQuality: #X, sizeCategory: #S, dataClass: #MIXED }

define view entity YTS_I_APP1 as select from YTS_P_APP1 

  //Extensibility
  association [0..1] to YTS_E_APP1        as _Extension                  on  YTS_P_APP1.Key1 = _Extension.Key1

{
    key Key1 as Key1,
    Cfield1 as Cfield1,
    Cfield2 as Cfield2,
    Cfield3_map as Cfield3_map1,
    Ifield1 as Ifield1,
    Ifield2 as Ifield2,
    Ifield3 as Ifield3,
    @Consumption.valueHelpDefinition: [ {entity: {name: 'I_CurrencyStdVH', element: 'Currency' }} ]
    Curr1   as Curr1,
    Curr2   as Curr2,
    Curr3   as Curr3,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat as lastchangedat,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as locallastchangedat
}
