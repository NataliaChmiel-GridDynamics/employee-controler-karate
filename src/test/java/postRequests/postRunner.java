package postRequests;

import com.intuit.karate.junit5.Karate;

public class postRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("createEmployee", "returnToken").relativeTo(getClass());
    }
}
