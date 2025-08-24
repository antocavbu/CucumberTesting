Feature: HU-002 Login de usuario
  Como usuario registrado 
  Quiero poder iniciar sesión en la plataforma 
  para acceder a mi cuenta.

  Scenario Outline: Login con diferentes credenciales
    Given que el usuario navega a la página de login
    When ingresa el usuario "<email>" y la contraseña "<password>"
    Then el sistema muestra el resultado para "<description>"

    Examples:
      | email                  | password      | description                |
      | juan.perez@example.com | Password123!  | Credenciales válidas       |
      | usuario@invalido.com   | wrongpass     | Credenciales inválidas     |
      |                        | Password123!  | Email vacío                |
      | juan.perez@example.com |               | Password vacía             |
      |                        |               | Ambos campos vacíos        |
