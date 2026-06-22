@US01
Feature: Mapa geolocalizado de eventos activos
  Como asistente
  Quiero visualizar un mapa interactivo con eventos activos cerca de mi ubicación
  Para descubrir actividades culturales en tiempo real sin recurrir a múltiples plataformas

  Scenario: Carga inicial con permisos GPS activos
    Given que el asistente abre la app y ha aceptado los permisos de geolocalización
    And se encuentra en una zona urbana de Lima con cobertura de datos
    When el sistema detecta su ubicación mediante GPS y consulta los eventos activos
    Then el mapa muestra todos los eventos en menos de 2 segundos centrados en su posición
    And los pines aparecen categorizados por tipo de evento con animación progresiva
    And el contador superior despliega el número total de eventos disponibles en el radio

  Scenario: Apertura sin permisos de geolocalización
    Given que el asistente abre la app pero rechazó los permisos de geolocalización
    When el sistema detecta la ausencia de permisos GPS al cargar el mapa principal
    Then se muestra un banner informativo con un selector de los 43 distritos de Lima
    And el asistente puede seleccionar un distrito manualmente para centrar el mapa
    And el banner persiste con un enlace para activar el GPS desde la configuración
