@US23
Feature: Alertas predictivas de oportunidades
  Como organizador
  Quiero recibir alertas sobre oportunidades culturales emergentes
  Para reaccionar antes que la competencia

  Scenario: Recepción de alerta predictiva
    Given que el sistema detecta una tendencia emergente en la zona del organizador
    When se genera la alerta predictiva
    Then el organizador recibe una notificación con el detalle de la oportunidad detectada

  Scenario: Sin tendencias emergentes detectadas
    Given que no existen patrones suficientes para predecir una oportunidad
    When el organizador revisa la sección de alertas
    Then se muestra un mensaje indicando que no hay alertas activas en ese momento
