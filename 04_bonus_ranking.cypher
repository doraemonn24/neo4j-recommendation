// ================================================
// FILE: 04_bonus_ranking.cypher
// DESC: BONUS - Rekomendasi dengan ranking
//       berdasarkan jumlah user yang membeli
// ================================================

MATCH (alice:User {name: 'Alice'})-[:PURCHASED]->(p:Product)
      <-[:PURCHASED]-(similarUser:User)-[:PURCHASED]->(rec:Product)
WHERE alice <> similarUser
  AND NOT (alice)-[:PURCHASED]->(rec)
RETURN rec.name AS recommended_product,
       COUNT(DISTINCT similarUser) AS score
ORDER BY score DESC;
