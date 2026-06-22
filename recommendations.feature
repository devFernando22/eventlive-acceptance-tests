@US30
Feature: Recomendaciones "Para ti"
  Como asistente
  Quiero recibir recomendaciones de eventos personalizadas
  Para descubrir actividades alineadas a mis intereses sin buscar manualmente

  Scenario: Generación exitosa de recomendaciones
    Given que el asistente tiene intereses y un historial de interacción registrado
    When abre la sección "Para ti"
    Then se muestran eventos recomendados según su historial, cercanía y popularidad

  Scenario: Usuario sin historial de interacción
    Given que el asistente es nuevo y no tiene historial de interacción
    When abre la sección "Para ti"
    Then se muestran recomendaciones genéricas basadas únicamente en sus intereses declarados
