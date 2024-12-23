# Test Automation Project with Java, Selenium, and API Testing

## 📋 Project Overview
This repository contains the implementation of a test automation framework designed to verify the functionality of an e-commerce platform through both UI and API testing.
The framework ensures comprehensive test coverage for critical user interactions and backend operations.

---

## Tools & Technologies
- **Programming Language**: Java
- **Automation Tool**: Selenium WebDriver
- **API Testing Tool**: RestAssured
- **Build Tool**: Maven
- **IDE**: IntelliJ IDEA
- **Version Control**: Git
- **Browser**: Chrome

---

##  Task Coverage

### Feature 1: Rate Certain Products
*Agile Story*: As a user, I should be able to leave my feedback, add product to cart and compare prices so that I can manage purchase functionality

#### Scenarios
1. **@UI @S1 - Leave feedback for certain products**
    - **Steps**:
        1. Search for iPhones and select a random product.
        2. Navigate to the "Değerlendirmeler" section.
        3. Filter reviews by "En Yeni Değerlendirme" and give a thumbs-up.
        4. Verify success message: `"Teşekkür Ederiz."`

2. **@UI @S2 - Add cheapest product to cart**
    - **Steps**:
        1. Search for iPhones and select a random product.
        2. Verify that "Diğer Satıcılar" exists on the page.
        3. Compare prices and select the cheapest one.
        4. Verify the product is added to the cart.

3. **@UI @S3 - Add product to cart**
    - **Steps**:
        1. Search for iPhones and select a random product.
        2. Store the price of the selected product.
        3. Add the product to the cart.
        4. Verify that the price from the product page matches the price in the cart.

---

### Feature 2: Test API
**Agile Story**: As a user, I should be able to perform GET and POST API calls to retrieve and send data.

#### Scenarios
1. **@api @api1 - Retrieve pet details**
    - **Steps**:
        1. Send a **GET** request to retrieve the pet with the given ID.
        2. Verify the response status code matches `<statusCode>`.
        3. Assert that the API response contains the pet's `<name>` and `<status>`.

   **Examples**:
   | id  | name     | status    | statusCode |
   |-----|----------|-----------|------------|
   | 100 | doggie   | available | 200        |
   | 101 | Harley   | available | 200        |

2. **@api @api2 - Add a new pet**
    - **Steps**:
        1. Send a **POST** request to add a new pet with the given `<id>`, `<name>`, and `<status>`.
        2. Verify the response status code matches `<statusCode>`.

   **Examples**:
   | id  | name      | status    | statusCode |
   |-----|-----------|-----------|------------|
   | 131 | Michelle  | sold      | 200        |
   | 132 | Harley    | available | 200        |


### Running Tests via Cucumber Runner
You can run your tests using Cucumber's tag-based filtering. Follow the steps below:

1. Open the `Runner` class located in `src/test/java/runners/CukesRunner`.
   2. Add the desired tag(s) in the `@CucumberOptions` annotation. For example:
      ```java
      @CucumberOptions(
          glue = "com/hepsiBurada/step_definitions",
          dryRun = false,
          tags = "@api2"
      )

## To run a specific scenario:
For example, to run UI Scenario 1 only, use:
tags = "@UI and @S1"
Note: If you specify tags = "@UI and @S1", only the relevant scenario will be executed.