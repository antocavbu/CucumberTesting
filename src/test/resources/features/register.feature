Feature: HU-001 Registro de usuario
  Como usuario 
  quiero poder registrarme en la plataforma 
  para acceder a sus funcionalidades.

  Scenario Outline: Registro con diferentes datos
    Given que el usuario navega a la página de registro
    When completa el formulario con "<firstName>", "<lastName>", "<phone>", "<country>", "<email>", "<password>"
    Then el sistema procesa el formulario para "<description>"

    Examples:
      | firstName | lastName | phone      | country        | email                  | password      | description                |
      | Juan      | Pérez    | 1234567890 | United States  | juan.perez@example.com | Password123!  | Datos completos válidos    |
      |           | López    | 5555555555 | Canada         | test@email.com         | Pass123       | Nombre vacío               |
      | Carlos    |          | 1111111111 | Spain          | carlos@test.com        | MyPass789     | Apellido vacío             |
      | Ana       | Martín   |            | France         | ana.martin@example.com | AnaPass123    | Teléfono vacío             |
      | Pedro     | Sánchez  | 2222222222 | Germany        |                        | PedroPass456  | Email vacío                |
      | Luis      | Fernández| 3333333333 | Italy          | luis@test.com          |              | Password vacía             |
      |           |          |            |                |                        |               | Todos los campos vacíos    |
