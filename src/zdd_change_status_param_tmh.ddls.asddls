@EndUserText.label: 'Parameters for Change Status'
define abstract entity zdd_change_status_param_tmh
{
@EndUserText.label: 'Change Status'
@Consumption.valueHelpDefinition: [ {
    entity.name: 'zdd_status_vh_tmh',
    entity.element: 'StatusCode',
    useForValidation: true
  } ]
    status : zde_status_tmh;    
@EndUserText.label: 'Add Observation Text'
    text : zde_text_tmh;
}
