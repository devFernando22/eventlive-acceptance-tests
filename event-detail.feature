@US04
Feature: Ficha de detalle del evento
  Como asistente
  Quiero ver el detalle completo de un evento
  Para decidir si asistiré o no

  Scenario: Apertura exitosa de la ficha desde el pin
    Given que el asistente está visualizando el mapa de eventos
    When toca un pin específico
    Then se abre la ficha del evento con lugar, fecha, hora, descripción y opciones disponibles

  Scenario: Evento eliminado o expirado
    Given que el asistente toca un pin de un evento que fue cancelado recientemente
    When intenta abrir su ficha
    Then se muestra un mensaje indicando que el evento ya no está disponible
