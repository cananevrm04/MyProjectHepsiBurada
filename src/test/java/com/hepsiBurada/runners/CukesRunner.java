package com.hepsiBurada.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"json:target/cucumber.json",
                "html:target/cucumber-report.html",
                "rerun:target/rerun.txt"},
        features = "src/test/resources/features",
        glue = "com/hepsiBurada/step_definitions",
        dryRun = false,
        tags = "@UI and @S2"
)
public class CukesRunner {
}
