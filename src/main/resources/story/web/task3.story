Scenario: sign up
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign up'])`
When I enter `<email>` in field located `By.xpath(//*[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until the page title contains the text 'Log in with'
When I enter `<name>` in field located `By.xpath(//*[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
When the condition '#{eval("<title>"=="recaptcha challenge")} is true I do
|step|
|When I click on element located `By.xpath(//button[@class='rc-button-default goog-inline-block'])
|Then the text 'Please select all matching images.' exists|

Examples:
|email                             |name                       |password                      |
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(Internet.password)}|
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(Internet.password)}|