@US08
Feature: Vista alterna en formato lista
  Como asistente
  Quiero ver los eventos en formato de lista
  Para comparar varias opciones rápidamente sin usar el mapa

  Scenario: Cambio exitoso a vista de lista
    Given que el asistente se encuentra en la vista de mapa
    When selecciona el ícono de "Vista lista"
    Then los eventos se muestran ordenados en formato de tarjetas verticales

  Scenario: Lista vacía por filtros muy restrictivos
    Given que el asistente aplicó filtros que no coinciden con ningún evento
    When cambia a la vista de lista
    Then se muestra un mensaje de "Sin resultados" con sugerencia de ampliar el radio
