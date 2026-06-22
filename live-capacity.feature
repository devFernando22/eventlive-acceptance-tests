@US16
Feature: Gestión de aforo en tiempo real
  Como organizador
  Quiero actualizar el aforo de mi evento en tiempo real
  Para informar a los asistentes sobre la disponibilidad de espacio

  Scenario: Actualización exitosa del aforo
    Given que el organizador tiene un evento activo con cupos disponibles
    When actualiza el número de asistentes registrados en el lugar
    Then el contador de aforo se refleja en tiempo real en la ficha del evento

  Scenario: Aforo alcanza el límite máximo
    Given que el aforo registrado alcanza el límite configurado
    When un nuevo asistente intenta confirmar su llegada
    Then el sistema muestra el evento como "Aforo completo" y bloquea nuevos registros
