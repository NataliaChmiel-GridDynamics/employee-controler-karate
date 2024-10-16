Feature: Delete employee by ID

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Delete employee by ID
    * def id = 5
    Given path 'employees', id
    When method DELETE
    Then status 204
    And print 'Response:', response

