package examples.getRequests;

import com.intuit.karate.junit5.Karate;

class GetRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getEmployees", "getEmployeeById", "simulateError", "getEmployeesWithAuthorization").relativeTo(getClass());
    }    

}
