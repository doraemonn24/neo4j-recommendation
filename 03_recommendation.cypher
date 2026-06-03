// ================================================
// FILE: 03_recommendation.cypher
// DESC: Query rekomendasi produk untuk Alice
//       menggunakan Collaborative Filtering
// ================================================

// STEP 1: Cari user lain yang punya kesamaan pembelian dengan Alice
MATCH (alice:User {name: 'Alice'})-[:PURCHASED]->(p:Product)
      <-[:PURCHASED]-(similarUser:User)
WHERE alice <> similarUser
RETURN DISTINCT similarUser.name AS similar_user;

// STEP 2: Rekomendasi produk yang belum dibeli Alice (QUERY UTAMA)
MATCH (alice:User {name: 'Alice'})-[:PURCHASED]->(p:Product)
      <-[:PURCHASED]-(similarUser:User)-[:PURCHASED]->(rec:Product)
WHERE alice <> similarUser
  AND NOT (alice)-[:PURCHASED]->(rec)
RETURN DISTINCT rec.name AS recommended_product;
