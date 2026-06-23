@US02
Feature: Ajuste del radio de búsqueda
  Como asistente
  Quiero ajustar el radio de búsqueda de eventos
  Para controlar la distancia máxima a la que estoy dispuesto a desplazarme

  Scenario: Ajuste exitoso del radio mediante slider
    Given que el asistente está en la vista de mapa
    When desliza el control de radio hacia un nuevo valor en kilómetros
    Then el mapa se actualiza mostrando solo los eventos dentro del radio seleccionado

  Scenario: Radio configurado sin eventos disponibles
    Given que el asistente reduce el radio a menos de 1 km
    When no existen eventos activos dentro de esa distancia
    Then se muestra un mensaje sugiriendo ampliar el radio de búsqueda
