Feature: Finding user-location und refreshing it after time for outdoor-navigation

Background: 
	Given App ist gestartet

Scenario: Standortabfrage des Nutzers schlägt fehl
   And GPS ist ausgeschaltet
   When Standort wird abgefragt
   Then Nachricht erscheint "Bitte GPS anschalten"

 Scenario: Standortabfrage des Nutzers funktioniert
   And GPS ist gestartet
   When Standort wird abgefragt
   Then Standort wird auf der Karte angezeigt

Feature: Finding user-location und refreshing it after time for outdoor-navigation

Background: 
	Given App ist gestartet

Scenario: Standortabfrage des Nutzers schlägt fehl
   And Bluetooth ist ausgeschaltet
   When Standort wird abgefragt
   Then Nachricht erscheint "Bitte Bluetooth anschalten"

 Scenario: Standortabfrage des Nutzers funktioniert
   And Bluetooth ist gestartet
   When Standort wird abgefragt
   Then Standort wird auf der Karte angezeigt

Scenario: Standortabfrage des Nutzers unmöglich
   And Bluetooth ist angeschaltet
   And Nutzer befindet sich nicht im Gebäude
   When Standort wird abgefragt
   Then Nachricht erscheint "Dein Standort ist unbekannt"