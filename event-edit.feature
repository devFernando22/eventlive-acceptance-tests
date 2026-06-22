@US13
Feature: Edición de un evento publicado
  Como organizador
  Quiero editar la información de un evento ya publicado
  Para corregir o actualizar sus datos

  Scenario: Edición exitosa de un evento activo
    Given que el organizador tiene un evento publicado y activo
    When modifica alguno de sus datos y guarda los cambios
    Then la ficha del evento se actualiza con la nueva información para los asistentes

  Scenario: Intento de editar un evento finalizado
    Given que el evento ya finalizó
    When el organizador intenta editarlo
    Then el sistema bloquea la edición e indica que el evento ya no puede modificarse
