@US07
Feature: Botón Cómo llegar
  Como asistente
  Quiero acceder a la ruta hacia un evento desde su ficha
  Para desplazarme sin buscar la dirección manualmente

  Scenario: Apertura exitosa del deep link de navegación
    Given que el asistente está viendo la ficha de un evento
    When presiona el botón "Cómo llegar"
    Then se simula la apertura de una app de navegación con la ubicación del evento precargada

  Scenario: Evento sin ubicación válida
    Given que el evento no cuenta con coordenadas registradas
    When el asistente presiona el botón "Cómo llegar"
    Then se muestra un mensaje indicando que la ubicación no está disponible
