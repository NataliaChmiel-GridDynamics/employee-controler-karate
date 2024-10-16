Feature: Simulate an internal server error

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Simulate an internal server error
    Given path 'simulate/server/error'
    When method GET
    Then status 500
    And match response == '#string'
    And print 'Response:', response

