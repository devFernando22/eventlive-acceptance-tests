@US34
Feature: Sistema de referidos por invitación
  Como usuario
  Quiero invitar a otras personas a la plataforma
  Para obtener beneficios por cada referido activo

  Scenario: Registro exitoso de un referido
    Given que el usuario compartió su código de invitación
    When una persona nueva se registra usando ese código
    Then el sistema asocia el referido a la cuenta del usuario y otorga el beneficio correspondiente

  Scenario: Código de invitación inválido
    Given que una persona ingresa un código de invitación inexistente
    When intenta completar el registro
    Then el sistema muestra un mensaje de código inválido sin otorgar beneficios
