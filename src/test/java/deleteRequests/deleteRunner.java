package deleteRequests;

import com.intuit.karate.junit5.Karate;

public class deleteRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("deleteEmployeeById").relativeTo(getClass());
    }
}
