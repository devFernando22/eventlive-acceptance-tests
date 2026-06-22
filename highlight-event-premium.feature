@US15
Feature: Destacar un evento (feature premium)
  Como organizador
  Quiero destacar mi evento sobre los demás
  Para aumentar su visibilidad en el mapa y la lista

  Scenario: Destacar evento con suscripción Premium activa
    Given que el organizador cuenta con suscripción Premium vigente
    When selecciona "Destacar evento" en uno de sus eventos publicados
    Then el evento se muestra con una insignia visual de destacado y prioridad en el listado

  Scenario: Intento de destacar sin suscripción Premium
    Given que el organizador no cuenta con suscripción Premium
    When intenta destacar un evento
    Then se muestra una pantalla invitándolo a suscribirse al plan Premium
