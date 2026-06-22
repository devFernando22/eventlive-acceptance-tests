@US32
Feature: Sistema de reseñas con validación
  Como asistente
  Quiero dejar una reseña de un evento al que asistí
  Para ayudar a otros usuarios a decidir

  Scenario: Publicación exitosa de una reseña
    Given que el asistente confirmó su asistencia a un evento finalizado
    When escribe una calificación y un comentario
    Then la reseña se publica y queda visible en la ficha del evento

  Scenario: Intento de reseñar un evento al que no asistió
    Given que el usuario no confirmó asistencia al evento
    When intenta dejar una reseña
    Then el sistema bloquea la acción e indica que solo asistentes verificados pueden reseñar
