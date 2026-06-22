@US24
Feature: Exportación de reporte DaaS
  Como organizador
  Quiero exportar un reporte de datos de mi evento
  Para compartirlo con mis patrocinadores o socios

  Scenario: Exportación exitosa del reporte en PDF
    Given que el organizador está en el Dashboard de Inteligencia de Mercado
    When presiona "Exportar reporte DaaS"
    Then se genera y descarga un archivo PDF simulado con las métricas del evento

  Scenario: Exportación sin datos suficientes
    Given que el evento no tiene métricas registradas
    When el organizador intenta exportar el reporte
    Then se muestra un mensaje indicando que no hay datos suficientes para generar el reporte
