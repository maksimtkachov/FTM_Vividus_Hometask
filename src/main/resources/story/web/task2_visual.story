Scenario: check several pages
When I go to the relative URL '<rel-url>'
When I make footer/header static
When I ${visual-action} baseline with `test#{eval(`<rel-url>`.replaceAll(`/`,`-`))}`
Examples:
|rel-url                                |
|/teams                                 |
|/about                                 |
|/pricing                               |
|/power-ups/category/analytics-reporting|
|/business-class                        |