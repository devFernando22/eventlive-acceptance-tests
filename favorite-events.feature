@US29
Feature: Guardado de eventos favoritos
  Como asistente
  Quiero guardar eventos en favoritos
  Para revisarlos más tarde fácilmente

  Scenario: Guardar un evento como favorito
    Given que el asistente está viendo la ficha de un evento
    When presiona el ícono de "Guardar"
    Then el evento se agrega a su sección de Favoritos

  Scenario: Quitar un evento de favoritos
    Given que el evento ya está guardado en Favoritos
    When el asistente presiona nuevamente el ícono de "Guardar"
    Then el evento se elimina de la lista de Favoritos
