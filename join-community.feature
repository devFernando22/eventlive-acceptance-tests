@US31
Feature: Unirse a comunidades temáticas
  Como asistente
  Quiero unirme a comunidades de interés afín
  Para conectar con personas que comparten mis mismos gustos

  Scenario: Unirse exitosamente a una comunidad
    Given que el asistente visualiza una comunidad temática (por ejemplo "K-pop")
    When presiona el botón "Unirme"
    Then queda registrado como miembro de esa comunidad y accede a su contenido

  Scenario: Intento de unirse dos veces a la misma comunidad
    Given que el asistente ya es miembro de una comunidad
    When intenta unirse nuevamente a la misma comunidad
    Then el sistema indica que ya forma parte de ella y muestra la opción de salir
