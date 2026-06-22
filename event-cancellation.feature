@US14
Feature: Cancelación de un evento publicado
  Como organizador
  Quiero cancelar un evento que ya publiqué
  Para informar a los asistentes que no se realizará

  Scenario: Cancelación exitosa
    Given que el organizador tiene un evento publicado y activo
    When selecciona la opción "Cancelar evento" y confirma la acción
    Then el estado del evento cambia a "Cancelado" y deja de mostrarse en el mapa de asistentes

  Scenario: Intento de cancelar un evento ya finalizado
    Given que el evento ya pasó su fecha y hora de finalización
    When el organizador intenta cancelarlo
    Then el sistema muestra un mensaje indicando que el evento ya no puede cancelarse
