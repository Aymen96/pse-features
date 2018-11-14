Feature: Gebäude und Räume werden vom User gesucht.

Background: 
	Given App ist gestartet
	When Suchknopf wurde gedruckt oder Nutzer wählt einen Suchvorschlag

Scenario: Verbindung mit dem Server nicht erfolgreich
	When Server gibt eine Fehler-Meldung als Antwort zurück
	Then Meldung erscheint "Verbindung mit dem Server nicht erfolgreich"

Scenario: Verbindung mit dem Server erfolgreich und gesuchter Ort wird nicht gefunden
   When Server gibt eine gültige Antwort zurück
   Then Meldung erscheint "Ort nicht gefunden. Überprüfen Sie Ihre Eingabe"

Scenario: Verbindung mit dem Server erfolgreich und gesuchter Ort wird gefunden
   When Server gibt eine gültige Antwort zurück
   Then Ziel wird auf der Karte angezeigt bzw. aktualisiert



 