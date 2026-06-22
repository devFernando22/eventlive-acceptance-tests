@US06
Feature: Notificación por geofencing
  Como asistente
  Quiero recibir notificaciones cuando un evento de mi interés esté cerca
  Para enterarme de oportunidades espontáneas sin buscar activamente

  Scenario: Notificación con intereses configurados
    Given que el asistente configuró previamente sus categorías de interés
    When un evento afín ingresa a su radio de proximidad
    Then recibe una notificación push simulada con el detalle del evento

  Scenario: Asistente sin intereses configurados
    Given que el asistente no configuró ninguna categoría de interés
    When un evento ingresa a su radio de proximidad
    Then no se genera ninguna notificación y se sugiere configurar intereses en el perfil
