package steps;

import io.cucumber.java.en.*;
import pages.RegisterPage;
import static org.junit.Assert.*;

public class RegisterSteps {
    private RegisterPage registerPage;

    @Given("que el usuario navega a la página de registro")
    public void que_el_usuario_navega_a_la_pagina_de_registro() {
        registerPage = new RegisterPage(Hooks.getDriver());
        registerPage.navigateToRegisterPage();
    }

    @When("completa el formulario con {string}, {string}, {string}, {string}, {string}, {string}")
    public void completa_el_formulario(String firstName, String lastName, String phone, String country, String email, String password) {
        registerPage.fillRegistrationForm(firstName, lastName, phone, country, email, password);
    }

    @Then("el sistema procesa el formulario para {string}")
    public void el_sistema_procesa_el_formulario_para(String description) {
        assertEquals("https://qa-practice.netlify.app/register", registerPage.getCurrentUrl());
        System.out.println("Formulario procesado para: " + description);
    }
}
