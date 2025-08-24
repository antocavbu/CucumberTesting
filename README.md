# Proyecto de Automatización con Selenium y Cucumber

Este proyecto implementa la automatización de pruebas funcionales para los flujos de registro y login de usuarios en una aplicación web, utilizando Selenium WebDriver y Cucumber con Java.

## Características principales
- Escenarios definidos en archivos `.feature` usando Gherkin.
- Step definitions en Java reutilizando Page Objects (`LoginPage`, `RegisterPage`).
- Uso de hooks para inicialización y cierre de WebDriver.
- Reporte de ejecución en HTML y JSON generado automáticamente en la carpeta `target`.
- Organización de escenarios mediante etiquetas como `@SmokeTest`, `@Regression`, `@Login`, `@Register` para facilitar el filtrado y la trazabilidad.

## Estructura
- `src/test/resources/features/` — Archivos `.feature` para login y registro.
- `src/test/java/steps/` — Step definitions y hooks.
- `src/test/java/pages/` — Page Objects para las páginas de la aplicación.
- `src/test/java/runners/` — Runner de Cucumber para ejecutar los escenarios.

## Ejecución
1. Instala las dependencias con Maven:
   ```sh
   mvn clean install
   ```
2. Ejecuta las pruebas:
   ```sh
   mvn test
   ```
3. Revisa el reporte generado en `target/cucumber-report.html`.

## Filtrado por etiquetas
Puedes ejecutar solo ciertos escenarios usando:
```sh
mvn test -Dcucumber.filter.tags="@SmokeTest"
```

---

Este proyecto es ideal para validar flujos críticos de autenticación y registro, y puede extenderse fácilmente para cubrir más funcionalidades.
