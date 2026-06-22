@US05
Feature: Sello de evento verificado
  Como asistente
  Quiero identificar qué eventos están verificados
  Para confiar en la veracidad de la información antes de asistir

  Scenario: Evento verificado por geofencing
    Given que un organizador validó su ubicación física mediante geofencing
    When el asistente visualiza la ficha de ese evento
    Then se muestra un sello visual de "Verificado" junto a la información principal

  Scenario: Evento aún no verificado
    Given que un evento no ha sido validado por geofencing
    When el asistente visualiza su ficha
    Then se muestra una advertencia indicando que la información no ha sido verificada
