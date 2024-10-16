Feature: Simulate JWT Token Retrieval

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Retrieve JWT token
    Given path 'simulate/tokenn'
    And request { "username": "admin", "password": "admin" }
    When method POST
    Then status 201
    And match response contains 'token'

    * def jwtToken = response.token
    And print 'JWT Token:', jwtToken
