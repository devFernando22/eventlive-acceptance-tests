@US20
Feature: Reporte post-evento automático
  Como organizador
  Quiero recibir un reporte automático al finalizar mi evento
  Para conocer su desempeño sin esfuerzo manual

  Scenario: Generación exitosa del reporte post-evento
    Given que un evento del organizador finalizó y registró asistentes
    When el sistema procesa el cierre del evento
    Then se genera automáticamente un reporte con asistencia, alcance e interacciones

  Scenario: Evento finalizado sin asistentes registrados
    Given que el evento finalizó sin ningún asistente confirmado
    When el sistema intenta generar el reporte
    Then se muestra un reporte indicando ausencia de datos de asistencia
