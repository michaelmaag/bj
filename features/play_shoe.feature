Feature:
  In order to have fun
  I want
  To be able to simulate my chip stack throughout a shoe of blackjack

  Scenario: Play an entire shoe me vs dealer
    Given I sit alone at the table
    And I start with 100 dollars of chips
    And I bet 5 dollars each hand
    And the dealer plays standard rules
    And the dealer uses a "1" deck shoe
    When I play "1" shoe
    Then I should have "2.5"n chips
