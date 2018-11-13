Feature: Gebäude und Räume werden lokalisiert.

Background: 
	Given App ist gestartet
	When Gebäude oder Raum wird über die Suchfunktion gesucht

Scenario: Raum oder Gebäude wurde gefunden 
   When Gebäude oder Raum wird in der Datenbank gefunden
   Then das Ziel wird auf der Karte angezeigt bzw. aktualisiert
   And Option wird freigeschaltet zum Anzeigen des Weges

Scenario: Raum oder Gebäude wurde nicht gefunden
   When Gebäude oder Raum wird in der Datenbank nicht gefunden
   Then Meldung erscheint "Raum oder Gebäude nicht gefunden"

 