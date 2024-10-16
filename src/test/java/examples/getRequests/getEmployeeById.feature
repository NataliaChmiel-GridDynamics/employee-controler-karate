Feature: Get employee by ID

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: get employee by ID
    Given path 'employees/1'
    When method get
    Then status 200

    * def expectedPart =
      """
      {
        "id": 1,
        "firstName": "Razvan",
        "lastName": "Smith",
        "dob": "1994-05-06",
        "email": "iamqarv@gmail.com"
      }
      """
    # Validate that each object in the response contains the expected fields
    And match each response contains expectedPart
    And print 'Response:', response

