@US22
Feature: Análisis de ROI de un evento pasado
  Como organizador
  Quiero analizar el retorno de inversión de mis eventos pasados
  Para tomar decisiones de marketing basadas en datos reales

  Scenario: Cálculo exitoso del análisis de ROI
    Given que el organizador tiene un evento finalizado con datos de inversión y asistencia registrados
    When accede a la sección de Análisis de ROI
    Then el sistema muestra el retorno estimado en función de la inversión y el alcance logrado

  Scenario: Evento sin datos de inversión registrados
    Given que el evento finalizado no tiene datos de inversión publicitaria registrados
    When el organizador intenta ver el análisis de ROI
    Then el sistema solicita completar los datos de inversión para poder calcularlo
