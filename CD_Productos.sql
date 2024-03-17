create database Asignacion_Choferes
go
use Asignacion_Choferes

create table Choferes 
(
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Cedula VARCHAR(20) NOT NULL,
);

-- Crear la tabla para los autobuses
CREATE TABLE Autobuses (
    ID INT PRIMARY KEY,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Placa VARCHAR(20) NOT NULL,
    Color VARCHAR(20) NOT NULL,
    Anio INT NOT NULL,
);

-- Crear la tabla para las rutas
CREATE TABLE Rutas (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
);

-- Crear la tabla para las asignaciones
CREATE TABLE Asignaciones (
    ID INT PRIMARY KEY,
    ChoferID INT NOT NULL,
    AutobusID INT NOT NULL,
    RutaID INT NOT NULL,
    FOREIGN KEY (ChoferID) REFERENCES Choferes(ID),
    FOREIGN KEY (AutobusID) REFERENCES Autobuses(ID),
    FOREIGN KEY (RutaID) REFERENCES Rutas(ID)
)
