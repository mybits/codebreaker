Feature: code-breaker starts a game

  As a code-breaker
  I want to start a game
  So I can break a code

  Scenario: start game
    Given that I'm not yet playing
    When I start a new game
    Then I should see 'Welcome to Codebreaker!'
    And I should see 'Enter your guess:'
