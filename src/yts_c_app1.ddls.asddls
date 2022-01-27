@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility:{ extensible: true, dataSources: ['Alias_R_APP1TP','_Extension'], elementSuffix: 'YAP', 
                             quota:{ maximumBytes: 1000, maximumFields: 100 } }
  //_Extension - note: cannot be used!
@EndUserText.label: 'APP1: UI Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity YTS_C_APP1 provider contract transactional_query as projection on YTS_R_APP1TP  as Alias_R_APP1TP 
  //Extensibility - note: cannot be used!
  association [0..1] to YTS_E_APP1        as _Extension                  on  Alias_R_APP1TP.Key1 = _Extension.Key1
  

{
    key Key1,
    Cfield1,
    Cfield2,
    Cfield3_map2 as Cfield3_map4,
    Ifield1,
    Ifield2,
    Curr1   as Curr1,
    Curr2   as Curr2,
    Curr3   as Curr3,
    lastchangedat,
    locallastchangedat,
    _Extension
     //- note: cannot be used!
    
    
}
