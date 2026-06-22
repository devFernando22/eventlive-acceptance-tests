@US25
Feature: Benchmark competitivo anónimo
  Como organizador
  Quiero comparar el desempeño de mi evento con el promedio del sector
  Para identificar oportunidades de mejora

  Scenario: Visualización exitosa del benchmark
    Given que el organizador tiene al menos un evento con métricas registradas
    When accede a la sección "Benchmark competitivo"
    Then se muestra una comparación anónima entre su evento y el promedio de eventos similares

  Scenario: Organizador sin eventos suficientes para comparar
    Given que el organizador no tiene eventos finalizados con métricas
    When accede a la sección "Benchmark competitivo"
    Then se muestra un mensaje indicando que necesita al menos un evento finalizado
