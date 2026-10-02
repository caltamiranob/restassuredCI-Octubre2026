Feature: Login

  Background: init
    Given que tengo acceso a instagram
    When ingreso mi email: alt.carlos@gmail.com

  Rule: Credenciales validas
    Scenario: Como usuario quiero ingresar un email y password para iniciar sesión
        And ingreso mi password: "admin123"
       Then hago clic en el botón iniciar sesión
        And muestra la página principal

  Rule: Credenciales invalidas
    Scenario: Como usuario quiero ingresar un email sin password para tener alguna validación
      Then hago clic en el botón iniciar sesión
      And no muestra la pagina principal

    Scenario: Como usuario quiero ingresar un email y password pero no hago clic en el botón iniciar sesión
      And ingreso mi password: "admin123"
      And no muestra la pagina principal