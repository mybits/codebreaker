Feature: code-breaker submits guess

  Code-breaker submits a guess of four number. The game marks the guess with '+' and '-' sings.

  For each guess that matches the number and a position of a number in a secret code, the mark includes '+' sign. For each guess that matches the number but not the position in a secret code, the mark includes '-' sign.

  Scenario: All exact matches
    Given the secret code is '1234'
    When I guess '1234'
    The mark should be '++++'

  Scenario: 2 exact matches, 2 numbers matches
    Given the secret code is '1234'
    When I guess '1243'
    The mark should be '++--'

  Scenario: 1 exact match, 3 numbers matches
    Given the secret code is '1234'
    When I guess '1432'
    The mark should be '+---'

  Scenario: 4 numbers matches
    Given the secret code is '1234'
    When I guess '4321'
    The mark should be '----'


