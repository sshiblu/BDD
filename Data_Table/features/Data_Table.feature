Feature: Data Table

# Scenario: Logging in to a website
# Given these users:
# | username | password |
# |    Bob   |    foo   |
# |    Joe   |    foo   |
# |  Another |    foo   |

Scenario Outline: Bank Withdrawals
  Given I have <Balance> in my account
  And I withdraw <Withdrawal>
  Then I should have <Remaining> in my account
    Examples:
      | Balance | Withdrawal | Remaining |
      |   100   |     50     |     50    |
      |   30    |     40     |    -10    |
      |   20    |     20     |      0    |
