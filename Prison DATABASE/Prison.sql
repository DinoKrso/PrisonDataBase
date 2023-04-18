/*SELECT p1.FirstName,p2.FirstName
FROM prison.PRISONER p1,prison.PRISONER p2 
WHERE p1.Cell_Prisoner = p2.Cell_Prioner;
Pronalazenje zatvorenika sa istim cellom
*/
/*SELECT p1.First Name,p2.Last Name,c1.SectionID
FROM prison.PRISONER p1 , prison.PRISONER p2 , prison.CELL c1 
WHERE p1.idPRISONERS = 5 AND p1.Cell_Prisoner = p2.Cell_Prisoner AND p2.Cell_Prisoner = c1.idCELL 
AND p1.idPRISONERS != p2.idPRISONERS ;
/*

/* izlistati assignmentzatvorenika i crimes zatvorenik kod kojih se officer ima badge number 3 
*/

SELECT p1.Assignment ,  o1.BadgeNumber, o2.Crime_Officers , a1.Type , c2.crimeType
FROM prison.PRISONER p1 , prison.CRIMES c2 , prison.OFFICER o1 , prison.Crime_Officers o2 , prison.ASSIGNMENT a1
WHERE a1.idASSIGNMENTS = p1.Assignment AND c1.prisonerID = p1.idPRISONERS AND c2.idCRIMES = o2.crimeID  
AND o2.officersID = o1.idOFFICERS AND o1.BadgeNumber = 3;


nadji prisonsentence i assignment  i crime type od zatvorenika koji se zove john 


SELECT p1.Type , c1.crimeType , a1.Type , p2.FirstName
FROM prison.PrisonSentence p1 , prison.CRIMES c1 , prison.ASSIGNMENT a1 
WHERE p1.PrisonSentenceID = p2.SentenceID AND a1.idASSIGNMENTS = p2.Assignment AND c1.prisonerID = p2.idPRISONERS 
AND p2.FirstName = 'John' ; 
