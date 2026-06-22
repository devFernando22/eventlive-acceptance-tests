@US10
Feature: Compartir evento
  Como asistente
  Quiero compartir un evento con otras personas
  Para invitarlas a asistir conmigo

  Scenario: Compartir exitosamente mediante selector nativo simulado
    Given que el asistente está en la ficha de un evento
    When presiona el botón "Compartir"
    Then se simula la apertura de un selector nativo con opciones de redes y mensajería

  Scenario: Cancelar el compartir
    Given que el selector de compartir está abierto
    When el asistente cierra el selector sin elegir una opción
    Then no se ejecuta ninguna acción y se mantiene en la ficha del evento
