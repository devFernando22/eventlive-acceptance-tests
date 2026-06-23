@US19
Feature: Selección de categoría y etiquetas
  Como organizador
  Quiero asignar una categoría y etiquetas a mi evento
  Para que aparezca correctamente en los filtros de los asistentes

  Scenario: Asignación exitosa de categoría y etiquetas
    Given que el organizador está creando un evento
    When selecciona una categoría y agrega hasta tres etiquetas
    Then el evento queda asociado a esa categoría y visible en los filtros correspondientes

  Scenario: Intento de publicar sin categoría
    Given que el organizador no seleccionó ninguna categoría
    When intenta publicar el evento
    Then el sistema bloquea la publicación y solicita seleccionar una categoría
