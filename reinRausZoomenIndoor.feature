Feature: Rein/Raus Zoomen im Indoor Modus

Background
    Given App ist gestartet
    And App ist im Indoor Modus

Scenario: Es wird im Indoor-Modus rein gezoomt
    When Es wird die Rein-Zoom-Funktion benutzt
    Then Indoor-Plan des Gebäudes wird größer
    And Größe von Beschriftung und sonstigem Text bleibt gleich

Scenario: Es wird im Indoor-Modus raus gezoomt
    When Es wird Raus-Zoom-Funktion benutzt
    Then Indoor-Plan des Gebäudes wird kleiner
    And Größe von Beschriftung und sonstigem Text bleibt gleich

Scenario: Maximaler Zoom ist erreicht beim rein zoomen
    And maximaler Zoom ist erreicht
    When Es wird die Rein-Zoom-Funktion benutzt
    Then Indoor-Plan verändert sich nicht
    And Nachricht erscheint "Maximale Zoomstufe erreicht"

Scenario: Maximaler Zoom ist erreicht beim raus zoomen
    And maximaler Zoom ist erreicht
    When Es wird die Raus-Zoom-Funktion benutzt
    Then Indoor-Plan verändert sich nicht
    And Nachricht erscheint "Maximale Zoomstufe erreicht"