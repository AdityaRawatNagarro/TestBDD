package com.nagarro.driven.project.espo.bdd.test;

import com.nagarro.driven.project.espo.bdd.test.testbase.EspoBDDTestBase;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
    features = {"classpath:featurefile"},
    glue = {
      "classpath:com.nagarro.driven.project.espo.bdd.test.step_definition",
      "com.nagarro.driven.project.espo.bdd.test.testbase"
    },
    plugin = {"pretty", "json:target/espoCRM.json", "html:target/cucumber-reporting"},
    monochrome = true,
    tags = "@Scenario1")
public class HomePageTest extends EspoBDDTestBase {}
