Feature: Anzeige den Informationen von Gebäuden.

Background: 
	Given App ist gestartet
	

Scenario: es gibt Wege für alle die unterschiedlichen Mitteln 
   When eine gültige Adresse gesucht wird 
   And ein bewegungsmittel bestimmt wird.
   Then wird der weg angezeigt(mit der entsprechenden Farbe).

Scenario: es gibt Wege für alle die unterschiedlichen Mitteln 
   When eine gültige Adresse gesucht wird 
   And kein bewegungsmittel wird bestimmt oder  
   Then wird der weg im Fuß modus angezeigt.
   
Scenario:es gibt keinen Weg für Autos.
   When eine gültige Adresse gesucht wird 
   And Auto als Bewegungsmittel gewählt wird.
   Then wird der weg im Fuß modus angezeigt.