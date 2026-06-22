@US27
Feature: Configuración de metas SMART
  Como organizador
  Quiero definir metas SMART para mis eventos
  Para medir mi progreso de forma objetiva

  Scenario: Creación exitosa de una meta SMART
    Given que el organizador accede a la sección "Metas"
    When ingresa una meta con valor numérico y plazo definido
    Then la meta se guarda y se muestra con una barra de progreso en 0%

  Scenario: Intento de crear meta sin plazo definido
    Given que el organizador no especifica un plazo para la meta
    When intenta guardarla
    Then el sistema bloquea el guardado y solicita completar el plazo
