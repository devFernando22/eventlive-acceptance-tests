@US12
Feature: Validación de evento por geofencing
  Como organizador
  Quiero validar mi ubicación física al publicar un evento
  Para que los asistentes confíen en la veracidad de la información

  Scenario: Validación exitosa dentro del radio permitido
    Given que el organizador se encuentra físicamente en el lugar del evento
    When el sistema verifica su ubicación mediante geofencing
    Then el evento queda marcado como "Verificado" y se le otorga el sello correspondiente

  Scenario: Intento de validación fuera del radio permitido
    Given que el organizador intenta validar el evento desde una ubicación distinta al lugar registrado
    When el sistema detecta que está fuera del radio permitido
    Then la validación es rechazada y se solicita acercarse al lugar del evento
