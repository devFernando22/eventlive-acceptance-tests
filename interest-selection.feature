@US28
Feature: Selección de intereses (onboarding)
  Como nuevo usuario
  Quiero seleccionar mis intereses al registrarme
  Para recibir recomendaciones personalizadas desde el inicio

  Scenario: Selección exitosa de intereses
    Given que el usuario completó el registro y está en la pantalla de onboarding
    When selecciona al menos tres categorías de interés
    Then sus preferencias se guardan y se usan para personalizar las recomendaciones iniciales

  Scenario: Intento de continuar sin seleccionar intereses
    Given que el usuario no seleccionó ninguna categoría
    When presiona "Continuar"
    Then el sistema solicita seleccionar al menos un interés antes de avanzar
