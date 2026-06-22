@US38
Feature: Compra de visibilidad hiper-local
  Como organizador
  Quiero comprar visibilidad prioritaria en un radio de 1 km
  Para aumentar la afluencia a mi evento espontáneo

  Scenario: Compra exitosa de visibilidad hiper-local
    Given que el organizador tiene un evento activo
    When selecciona el plan de visibilidad hiper-local y confirma el pago simulado
    Then el evento se muestra con prioridad a los usuarios dentro de 1 km de radio

  Scenario: Intento de compra sin evento activo
    Given que el organizador no tiene ningún evento publicado
    When intenta comprar visibilidad hiper-local
    Then el sistema indica que debe publicar un evento antes de adquirir el beneficio
