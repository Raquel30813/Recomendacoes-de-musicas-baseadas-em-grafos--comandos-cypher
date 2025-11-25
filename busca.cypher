//modelo de criação
MERGE (u:Usuario {id: "", nome: "", idade: ""})
MERGE (a:Artista {id: "", nome: "", idade: ""})
MERGE (m:Musica {nome: "", tempo: ""})
MERGE (g:Genero {id: "", tipo: ""})

MERGE (u)-[:SEGUE {curtidas: "", comentarios: "", redes_sociais: ""}]->(a)
MERGE (u)-[:ESCUTA {nota: "", tempo: ""}]->(m)
MERGE (m)-[:POSSUI {descricao: ""}]->(g)
MERGE (u)-[:CURTE {quantidade: ""}]->(g)
MERGE (m)-[:PERTENCE]->(a)


//recomenda musicas de um usuario para outro usuario com a mesma idade
MATCH (u:Usuario)
MATCH (o:Usuario {idade: u.idade})
MATCH (o)-[:ESCUTA]->(m:Musica)
WHERE o <> u
RETURN u,COLLECT(DISTINCT m) AS recomendacoes

//recomenda musicas diferentes para ouvintes que gostam do mesmo genero
MATCH (u:Usuario)
MATCH (u)-[:ESCUTA]->(:Musica)-[:POSSUI]->(g:Genero)
MATCH (o:Usuario)-[:ESCUTA]->(m:Musica)-[:POSSUI]->(g)
WHERE o <> u
  AND NOT (u)-[:ESCUTA]->(m)
RETURN u, COLLECT(DISTINCT m) AS recomendacoes;

//recomenda musicas para usuario que seguem os mesmos artistas
MATCH (u: Usuario)
MATCH (u)-[:SEGUE]->(a:Artista)
MATCH (o: Usuario)
MATCH (o)-[:SEGUE]->(a)
WHERE o <> u
MATCH (a)-[:POSSUI]->(m:Musica)
WHERE NOT (u)-[:ESCUTA]->(m)
RETURN DISTINCT m AS recomendacoes

//recomenda a todos os usuario musicas com notas acima de 5
MATCH (m:Musica)
WHERE m.nota > 5
RETURN m

//recomendar musicas de artistas que possuem maior numero de curtidas nas redes_sociais
MATCH (a:Artista)<-[s:SEGUE]-(:Usuario)
WHERE s.curtidas > 1000000
MATCH (a)-[:POSSUI]->(m:Musica)
RETURN DISTINCT m AS recomendacoes;
