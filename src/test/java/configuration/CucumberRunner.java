package configuration;

import io.cucumber.junit.CucumberOptions;

@CucumberOptions(
        plugin = "pretty",
        features = {"src/test/resources/features"},
        glue = {"steps", "configuration.hooks"}
)
public class CucumberRunner {

}
