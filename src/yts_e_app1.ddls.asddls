@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AbapCatalog.extensibility:{ extensible: true, dataSources: ['Persistence'], elementSuffix: 'YAP', 
                             quota:{ maximumBytes: 1000, maximumFields: 100 } }
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'APP1: UI Projection View'
--@Metadata.ignorePropagatedAnnotations: true
--@Metadata.allowExtensions: true


define view entity YTS_E_APP1 as select from yts_app1 as Persistence {
  key Persistence.key1 as Key1
}
