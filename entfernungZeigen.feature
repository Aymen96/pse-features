Feature: Entfernung wird angezeigt

Background
    Given App ist offen
    When Nutzer nach Gebäude bzw. Raum sucht

Scenario: Anzeige der Entfernung funktioniert
    And Gebäude bzw. Raum wird gefunden
    And Weg wird berechnet
    Then Entfernung zum Gebäude bzw. Raum wird angezeigt
    
Scenario: Anzeige der Entfernung funktoniert nicht
    And Gebäude bzw. Raum wird nicht gefunden
    Then Entfernung zum Gebäude bzw. Raum wird nicht angezeigt