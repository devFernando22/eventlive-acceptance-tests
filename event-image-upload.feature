@US18
Feature: Carga simulada de imágenes al evento
  Como organizador
  Quiero agregar imágenes a mi evento
  Para hacerlo más atractivo a los asistentes

  Scenario: Carga exitosa de imagen
    Given que el organizador está completando el formulario de publicación
    When selecciona y sube una imagen desde su dispositivo
    Then la imagen se muestra en la vista previa de la ficha del evento

  Scenario: Carga de archivo no compatible
    Given que el organizador intenta subir un archivo que no es una imagen
    When confirma la carga
    Then el sistema muestra un mensaje indicando el formato no soportado
