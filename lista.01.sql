use avaliacao_22c;

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, num_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

INSERT INTO livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, num_paginas, idioma)
VALUES 
  ('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
  ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
  ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

UPDATE livros
SET disponivel = FALSE
WHERE ano_publicacao < 2000;

UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

DELETE FROM livros
WHERE categoria = 'Terror';

DELETE FROM livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM livros
WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM livros
WHERE editora = 'Penguin Books';

SELECT * FROM livros
WHERE num_paginas > 500;

SELECT categoria, COUNT *
FROM livros
GROUP BY categoria;

SELECT * FROM livros
LIMIT 5;

SELECT COUNT *, AVG(num_paginas)
FROM livros
WHERE categoria = 'Drama';

SELECT AVG(ano_publicacao)
FROM livros
WHERE disponivel = TRUE;

SELECT MAX(ano_publicacao), MIN(ano_publicacao)
FROM livros;

SELECT * FROM livros
ORDER BY ano_publicacao DESC;

(SELECT titulo FROM livros WHERE idioma = 'Inglês')
UNION
(SELECT titulo FROM livros WHERE idioma = 'Português');

SELECT *
FROM livros
WHERE autor = 'George Orwell';
