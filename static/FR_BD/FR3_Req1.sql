SELECT CLIENTS.CodeClient, CLIENTS.NomClient, DETAILCOMMANDES.RefCmd, SUM(TARIFS.Prix * DETAILCOMMANDES.Quantite) AS TOTAL_Commande, (SELECT SUM(T2.Prix * D2.Quantite) 
       			 FROM DETAILCOMMANDES D2 
       			 JOIN TARIFS T2 ON D2.RefProduit = T2.RefProduit 
                 AND D2.RefTaille = T2.RefTaille 
                 JOIN COMMANDES C2 ON D2.RefCmd = C2.NumCmd 
                 WHERE C2.RefClient = CLIENTS.CodeClient 
                 AND C2.DateC >= '2022-01-01' 
                 AND T2.Annee = YEAR(C2.DateC)
) AS TOTAL_Clients 
FROM CLIENTS, DETAILCOMMANDES, TARIFS, COMMANDES, PRODUITS 
WHERE CLIENTS.CodeClient = COMMANDES.RefClient 
AND COMMANDES.NumCmd = DETAILCOMMANDES.RefCmd 
AND DETAILCOMMANDES.RefProduit = PRODUITS.CodeProduit 
AND TARIFS.RefProduit = PRODUITS.CodeProduit 
AND COMMANDES.DateC >= '2022-01-01' 
AND TARIFS.Annee = YEAR(COMMANDES.DateC) 
AND TARIFS.RefTaille = DETAILCOMMANDES.RefTaille 
GROUP BY CLIENTS.CodeClient, CLIENTS.NomClient, DETAILCOMMANDES.RefCmd 
ORDER BY CLIENTS.CodeClient ASC;