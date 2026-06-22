@US26
Feature: Mapa de calor de demanda cultural
  Como organizador
  Quiero visualizar un mapa de calor con la demanda cultural de mi zona
  Para identificar dónde concentrar mis esfuerzos de difusión

  Scenario: Carga exitosa del mapa de calor
    Given que el organizador accede al Dashboard de Inteligencia de Mercado
    And existen datos de actividad registrados en su zona
    When selecciona la pestaña "Mapa de calor"
    Then se muestra una visualización con las zonas de mayor concentración de demanda

  Scenario: Zona sin actividad registrada
    Given que la zona seleccionada no cuenta con eventos ni interacciones registradas
    When el organizador consulta el mapa de calor
    Then se muestra un mensaje indicando ausencia de datos para esa zona
