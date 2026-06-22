@US11
Feature: Publicación Flash de eventos
  Como organizador
  Quiero publicar un evento espontáneo en menos de un minuto
  Para aprovechar oportunidades culturales emergentes sin fricción

  Scenario: Publicación exitosa del formulario Flash
    Given que el organizador accede al formulario de Publicación Flash
    When completa los datos básicos del evento (nombre, lugar, hora, categoría)
    Then el evento se publica y aparece inmediatamente en el mapa de los asistentes cercanos

  Scenario: Intento de publicación con campos vacíos
    Given que el organizador deja campos obligatorios sin completar
    When intenta confirmar la publicación
    Then el sistema bloquea el envío y resalta los campos faltantes
