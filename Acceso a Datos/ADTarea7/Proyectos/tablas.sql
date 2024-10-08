CREATE TABLE IF NOT EXISTS matricula (
		DNI          varchar(9)  NOT NULL,
		NombreModulo varchar(60) NOT NULL,
		Curso        varchar(5)  NOT NULL,
		Nota         double      NOT NULL,
		PRIMARY KEY (DNI)
)
DEFAULT CHARSET=latin1;

INSERT INTO matricula values 
('12345678A', 'DAM', '23-24',  8),
('23456789B', 'DAW', '23-24',  9),
('14785236d', 'ASIR', '23-24',  10),
('96385274f', 'DAM', '23-24', 10);
       
CREATE TABLE IF NOT EXISTS alumnos (
     DNI varchar(9) NOT NULL,
     Nombre varchar(50) NOT NULL,
     Apellidos varchar(70) NOT NULL,
     Direccion varchar(100) NOT NULL,
     FechaNac date NOT NULL,
PRIMARY KEY (DNI)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO alumnos VALUES
('12345678A', 'José Alberto', 'González Pérez', 'C/Albahaca, nº14, 1ºD', '1986-07-15'),
('23456789B', 'Almudena', 'Cantero Verdemar', 'Avd/ Profesor Alvarado, n27, 8ºA', '1988-11-04'),
('14785236d', 'Martín', 'Díaz Jiménez', 'C/Luis de Gongora, nº2.', '1987-03-09'),
('96385274f', 'Lucas', 'Buendia Portes', 'C/Pintor Sorolla, nº 16, 4ºB', '1988-07-10');
