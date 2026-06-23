@US17
Feature: Duplicar un evento exitoso
  Como organizador
  Quiero duplicar un evento que ya tuvo buena asistencia
  Para reutilizar su configuración en una nueva fecha

  Scenario: Duplicación exitosa de un evento
    Given que el organizador tiene un evento finalizado con buena asistencia
    When selecciona "Duplicar evento"
    Then se crea un nuevo evento en estado borrador con los mismos datos, solicitando nueva fecha

  Scenario: Duplicar un evento cancelado
    Given que el evento seleccionado fue cancelado
    When el organizador intenta duplicarlo
    Then el sistema permite la duplicación pero muestra una advertencia sobre el estado original
