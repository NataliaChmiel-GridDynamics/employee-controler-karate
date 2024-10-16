Feature: Get employees with proper authorization

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Obtain token and use it to get employees

    # Step 1: Get the Bearer token
    Given path 'simulate/token'
    And request { "username": "admin", "password": "admin" }
    When method POST
    Then status 200

    * def token = response.token
    And print 'Token:', token

#    # Step 2: Use the token in the Authorization header
#    Given path 'simulate/get/employees'
#    And header Authorization = 'Bearer ' + token
#    When method GET
#    Then status 200
#    And print 'Response:', response
