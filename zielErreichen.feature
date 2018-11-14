Feature: Bescheidgeben beim Erreichen des Zieles und Fragen nach Feedback

Background
    Given App ist gestartet
    And Ziel eingegeben
    And Weg wird angezeigt

Scenario: Nutzer erreicht das Ziel
    When Nutzer steht im gesuchten Raum oder direkt davor
    Then Nachricht erscheint "Sie haben das Ziel erreicht"
    And Nachricht erscheint "Wollen sie uns Feedback geben? feedback@pse.kit.edu"