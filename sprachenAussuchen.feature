Feature: Verschiedene Sprachen aussuchen

Background
    Given App ist gestartet
    And Menü ist geöffnet

Scenario: Es wird die Sprache "Deutsch" ausgewählt
    When In den Sprachoptionen "Deutsch" ausgewählt wird
    Then Menüs sind auf Deutsch

Scenario: Es wird die Sprache "Englisch" ausgewählt
    When In den Sprachoptionen "Englisch" ausgewählt wird
    Then Menüs sind auf Englisch