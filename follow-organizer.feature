@US33
Feature: Seguir a un organizador
  Como asistente
  Quiero seguir a un organizador de mi interés
  Para enterarme de sus próximos eventos

  Scenario: Seguir exitosamente a un organizador
    Given que el asistente está en el perfil de un organizador
    When presiona el botón "Seguir"
    Then el organizador se agrega a su lista de seguidos y recibirá notificaciones de sus nuevos eventos

  Scenario: Dejar de seguir a un organizador
    Given que el asistente ya sigue a un organizador
    When presiona el botón "Dejar de seguir"
    Then el organizador se elimina de su lista de seguidos
