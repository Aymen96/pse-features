Feature: Anzeige den Informationen von Gebäuden.

Background: 
	Given App ist gestartet
	When Man befindet sich im Outdoor Modus

Scenario: Informationen werden durch einem Klick auf die Gebäuden angezeigt. 
   When auf einem Gebäude geklickt wird.
   Then erscheint eine Nachricht die verschiedene Infos vom Gbäude enthalten.

Scenario: Man klickt auf ungültige Gbäuden und kriegt keie Informationen.
   When auf einer ungültigen gebäude geklickt wird, die privat sind oder nicht von der App erkannt werden.
   Then erscheint nur die Adresse von dem Gebäude.

   
Scenario: Man klickt auf ungültige Gbäuden und kriegt keie Informationen.
   When es keine Internet Verbindung im internet besteht.
   And auf ein Gebäude gecklickt wird.
   Then erscheint eine Nachricht "Please connect your device"