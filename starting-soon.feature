@US09
Feature: Eventos que empiezan pronto
  Como asistente
  Quiero ver los eventos que están por iniciar
  Para aprovechar oportunidades inmediatas cercanas

  Scenario: Visualización de eventos próximos a iniciar
    Given que existen eventos que comienzan en menos de 60 minutos cerca del usuario
    When el asistente abre la sección "Empieza pronto"
    Then se listan esos eventos ordenados por cercanía en el tiempo de inicio

  Scenario: Sin eventos próximos a iniciar
    Given que no hay eventos por iniciar en el radio configurado
    When el asistente abre la sección "Empieza pronto"
    Then se muestra un mensaje indicando que no hay eventos inminentes
