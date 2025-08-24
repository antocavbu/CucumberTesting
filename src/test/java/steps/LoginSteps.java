package steps;

import io.cucumber.java.en.*;
import pages.LoginPage;

public class LoginSteps {
    private LoginPage loginPage;

    @Given("que el usuario navega a la página de login")
    public void que_el_usuario_navega_a_la_pagina_de_login() {
        loginPage = new LoginPage(Hooks.getDriver());
        loginPage.navigateToLoginPage();
    }

    @When("ingresa el usuario {string} y la contraseña {string}")
    public void ingresa_el_usuario_y_la_contraseña(String email, String password) {
        loginPage.login(email, password);
    }

    @Then("el sistema muestra el resultado para {string}")
    public void el_sistema_muestra_el_resultado_para(String description) {
        boolean isSuccess = loginPage.isLoginSuccessful();
        System.out.println("Resultado login para: " + description + ". ¿Login exitoso?: " + isSuccess);
        // Aquí puedes agregar lógica para validar según el description si esperas éxito o fallo
    }
}
