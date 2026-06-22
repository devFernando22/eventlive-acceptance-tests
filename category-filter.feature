@US03
Feature: Filtro de eventos por categoría
  Como asistente
  Quiero filtrar eventos por categoría
  Para encontrar actividades acordes a mis intereses específicos

  Scenario: Aplicación exitosa de un filtro por categoría
    Given que el asistente está visualizando el mapa con varios tipos de eventos
    When selecciona una categoría desde los chips de filtro (por ejemplo "Cultural")
    Then el mapa muestra únicamente los pines de eventos de esa categoría

  Scenario: Combinación de múltiples categorías sin resultados
    Given que el asistente selecciona dos o más categorías poco frecuentes en su zona
    When no existen eventos que coincidan con esa combinación
    Then se muestra un mensaje de "Sin resultados" con sugerencia de quitar algún filtro
