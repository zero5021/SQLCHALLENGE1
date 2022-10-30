enlace de video: https://youtu.be/diG_Qe3T70I

1. CREATE DATABASE desafio_luis_urbaneja_280;

2. \c desafio_luis_urbaneja_280;

3. CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

4. INSERT INTO client (email, client_name, phone, company, priority) VALUES 
('prueba1@gmail.com', 'luis', '123456789', 'claro', 10);

4.1 INSERT INTO client (email, client_name, phone, company, priority) VALUES
('prueba2@gmail.com', 'zero', '123456789', 'entel', 9),
('prueba3@gmail.com', 'marianela', '123456789', 'vtr', 8),
('prueba4@gmail.com', 'pavel', '123456789', 'movistar', 7),
('prueba5@gmail.com', 'ledymar', '123456789', 'wom', 6);

5. SELECT * FROM client ORDER BY priority DESC, id ASC LIMIT 3;

6. SELECT * FROM client WHERE priority = 10 OR company = 'movistar';

7. \q