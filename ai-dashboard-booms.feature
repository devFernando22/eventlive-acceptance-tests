@US21
Feature: Dashboard de IA Predictiva - Booms culturales
  Como organizador
  Quiero visualizar predicciones de tendencias culturales emergentes
  Para anticipar oportunidades de afluencia y optimizar mi inversión publicitaria

  Scenario: Generación exitosa de predicción de Boom cultural
    Given que el organizador ingresa al Dashboard de Inteligencia de Mercado
    And existen suficientes datos históricos de la zona seleccionada
    When el organizador presiona el botón "Generar predicción"
    Then el sistema muestra una simulación de Boom cultural con nivel de confianza estimado
    And se despliega un mensaje de ayuda explicando cómo interpretar el resultado

  Scenario: Predicción sin datos suficientes
    Given que el organizador ingresa al Dashboard de Inteligencia de Mercado
    And la zona seleccionada no cuenta con historial suficiente de eventos
    When el organizador presiona el botón "Generar predicción"
    Then el sistema muestra un mensaje indicando que no hay datos suficientes
    And sugiere ampliar el radio de análisis o esperar más eventos registrados
