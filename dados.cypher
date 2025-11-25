// 1
MERGE (u:Usuario {id: "U1", nome: "Raquel", idade: "25"})
MERGE (a:Artista {id: "A1", nome: "Anitta", idade: "32"})
MERGE (m:Musica {nome: "Show das Poderosas", tempo: "3:30"})
MERGE (g:Genero {id: "G1", tipo: "Pop"})
MERGE (u)-[:SEGUE {curtidas: "120", comentarios: "15", redes_sociais: "Instagram"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "3:30"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Hit nacional"}]->(g)
MERGE (u)-[:CURTE {quantidade: "50"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 2
MERGE (u:Usuario {id: "U2", nome: "Carlos", idade: "30"})
MERGE (a:Artista {id: "A2", nome: "Djavan", idade: "73"})
MERGE (m:Musica {nome: "Oceano", tempo: "4:20"})
MERGE (g:Genero {id: "G2", tipo: "MPB"})
MERGE (u)-[:SEGUE {curtidas: "80", comentarios: "10", redes_sociais: "Facebook"}]->(a)
MERGE (u)-[:ESCUTA {nota: "4", tempo: "4:20"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Clássico da MPB"}]->(g)
MERGE (u)-[:CURTE {quantidade: "30"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 3
MERGE (u:Usuario {id: "U3", nome: "Mariana", idade: "22"})
MERGE (a:Artista {id: "A3", nome: "Coldplay", idade: "28"})
MERGE (m:Musica {nome: "Yellow", tempo: "4:05"})
MERGE (g:Genero {id: "G3", tipo: "Rock Alternativo"})
MERGE (u)-[:SEGUE {curtidas: "200", comentarios: "25", redes_sociais: "Twitter"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "4:05"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Sucesso internacional"}]->(g)
MERGE (u)-[:CURTE {quantidade: "70"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 4
MERGE (u:Usuario {id: "U4", nome: "João", idade: "27"})
MERGE (a:Artista {id: "A4", nome: "Marília Mendonça", idade: "26"})
MERGE (m:Musica {nome: "Infiel", tempo: "3:50"})
MERGE (g:Genero {id: "G4", tipo: "Sertanejo"})
MERGE (u)-[:SEGUE {curtidas: "150", comentarios: "20", redes_sociais: "Instagram"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "3:50"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Sertanejo universitário"}]->(g)
MERGE (u)-[:CURTE {quantidade: "60"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 5
MERGE (u:Usuario {id: "U5", nome: "Fernanda", idade: "35"})
MERGE (a:Artista {id: "A5", nome: "Ivete Sangalo", idade: "53"})
MERGE (m:Musica {nome: "Sorte Grande", tempo: "3:40"})
MERGE (g:Genero {id: "G5", tipo: "Axé"})
MERGE (u)-[:SEGUE {curtidas: "90", comentarios: "12", redes_sociais: "Facebook"}]->(a)
MERGE (u)-[:ESCUTA {nota: "4", tempo: "3:40"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Clássico do carnaval"}]->(g)
MERGE (u)-[:CURTE {quantidade: "40"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 6
MERGE (u:Usuario {id: "U6", nome: "Pedro", idade: "29"})
MERGE (a:Artista {id: "A6", nome: "Eminem", idade: "52"})
MERGE (m:Musica {nome: "Lose Yourself", tempo: "5:20"})
MERGE (g:Genero {id: "G6", tipo: "Rap"})
MERGE (u)-[:SEGUE {curtidas: "300", comentarios: "40", redes_sociais: "Twitter"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "5:20"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Oscar de melhor canção"}]->(g)
MERGE (u)-[:CURTE {quantidade: "100"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 7
MERGE (u:Usuario {id: "U7", nome: "Luiza", idade: "24"})
MERGE (a:Artista {id: "A7", nome: "Taylor Swift", idade: "35"})
MERGE (m:Musica {nome: "Love Story", tempo: "3:55"})
MERGE (g:Genero {id: "G7", tipo: "Country Pop"})
MERGE (u)-[:SEGUE {curtidas: "250", comentarios: "30", redes_sociais: "Instagram"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "3:55"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Romântica"}]->(g)
MERGE (u)-[:CURTE {quantidade: "80"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 8
MERGE (u:Usuario {id: "U8", nome: "Ricardo", idade: "40"})
MERGE (a:Artista {id: "A8", nome: "Metallica", idade: "44"})
MERGE (m:Musica {nome: "Enter Sandman", tempo: "5:30"})
MERGE (g:Genero {id: "G8", tipo: "Heavy Metal"})
MERGE (u)-[:SEGUE {curtidas: "180", comentarios: "22", redes_sociais: "Facebook"}]->(a)
MERGE (u)-[:ESCUTA {nota: "4", tempo: "5:30"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Metal clássico"}]->(g)
MERGE (u)-[:CURTE {quantidade: "55"}]->(g)
MERGE (m)-[:PERTENCE]->(a);

// 9
MERGE (u:Usuario {id: "U9", nome: "Sofia", idade: "21"})
MERGE (a:Artista {id: "A9", nome: "Billie Eilish", idade: "23"})
MERGE (m:Musica {nome: "Bad Guy", tempo: "3:14"})
MERGE (g:Genero {id: "G9", tipo: "Electropop"})
MERGE (u)-[:SEGUE {curtidas: "220", comentarios: "28", redes_sociais: "Instagram"}]->(a)
MERGE (u)-[:ESCUTA {nota: "5", tempo: "3:14"}]->(m)
MERGE (m)-[:POSSUI {descricao: "Grammy winner"}]->(g)
MERGE (u)-[:CURTE {quantidade: "75"}]->(g)
MERGE (m)-[:PERTENCE]->(a);
