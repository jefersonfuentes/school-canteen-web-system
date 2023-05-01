CREATE TABLE
ESPECIALIDAD(
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  DESCRIPCION VARCHAR(200) NOT NULL,
  ESTADO BOOLEAN NOT NULL
);

CREATE TABLE
  SECCION(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    DESCRIPCION VARCHAR(200) NOT NULL,
    ESTADO BOOLEAN NOT NULL
  );

CREATE TABLE
  ESTUDIANTE(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(200) NOT NULL,
    PRIMERAPELLIDO VARCHAR(200) NOT NULL,
    SEGUNDOAPELLIDO VARCHAR(200) NOT NULL,
    CEDULA VARCHAR(200) NOT NULL UNIQUE,
    COMIDAS INT NOT NULL,
    IDESPECIALIDAD INT NOT NULL,
    IDSECCION INT NOT NULL,
    ESTADO BOOLEAN NOT NULL,
    CORREO VARCHAR(200) NOT NULL UNIQUE,
    CONTRASENA VARCHAR(200) NOT NULL,
    BECADO BOOLEAN NOT NULL,
    PERFIL INT NOT NULL, -- 1 -> Administrador | 2 -> Cobros | 3 -> Cliente
    FOTOPERFIL VARCHAR(200) NOT NULL
  );

CREATE TABLE
  PROFESOR(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR(200) NOT NULL,
    PRIMERAPELLIDO VARCHAR(200) NOT NULL,
    SEGUNDOAPELLIDO VARCHAR(200) NOT NULL,
    CEDULA VARCHAR(200) NOT NULL UNIQUE,
    COMIDAS INT NOT NULL,
    CORREO VARCHAR(200) NOT NULL UNIQUE,
    CONTRASENA VARCHAR(200) NOT NULL,
    PERFIL INT NOT NULL,
    -- 1 -> Administrador | 2 -> Cobros | 3 -> Cliente
    ESTADO BOOLEAN NOT NULL,
    FOTOPERFIL VARCHAR(200) NOT NULL
  );

CREATE TABLE
  ASISTENCIA(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    IDESTUDIANTE INT,
    IDPROFESOR INT,
    FECHA VARCHAR(200) NOT NULL,
    ESTADO BOOLEAN NOT NULL
  );

CREATE TABLE
  TRANSACCION(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    IDESTUDIANTE INT,
    IDPROFESOR INT,
    FECHA VARCHAR(200) NOT NULL,
    HORA VARCHAR(50),
    COMIDAS INT NOT NULL,
    ESTADO BOOLEAN NOT NULL
  );

CREATE TABLE
  FUNCIONARIO(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PERFIL INT NOT NULL,
    -- 1 -> Administrador | 2 -> Cobros
    NOMBRE VARCHAR(200) NOT NULL,
    PRIMERAPELLIDO VARCHAR(200) NOT NULL,
    SEGUNDOAPELLIDO VARCHAR(200) NOT NULL,
    CORREO VARCHAR(200) NOT NULL UNIQUE,
    CONTRASENA VARCHAR(200) NOT NULL,
    ESTADO BOOLEAN NOT NULL
  );

CREATE TABLE
  DIANOLECTIVO(
    ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FECHA VARCHAR(200) NOT NULL,
    NOMBRE VARCHAR(200) NOT NULL,
    ESTADO BOOLEAN NOT NULL
  );

ALTER TABLE
  ESTUDIANTE
ADD
  FOREIGN KEY (IDSECCION) REFERENCES SECCION(ID);

ALTER TABLE
  ESTUDIANTE
ADD
  FOREIGN KEY (IDESPECIALIDAD) REFERENCES ESPECIALIDAD(ID);
