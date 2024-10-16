Feature: Update employee by ID

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Update employee by ID
    * def id = 1
    * def e =
      """
      {
        "id": 1,
        "firstName": "Razvan",
        "lastName": "Smith",
        "dob": "1994-05-06",
        "email": "iamqarv@gmail.com"
      }
      """
    Given path 'employees', id
    And request e
    When method PUT
    Then status 204
    And print 'Response:', response



