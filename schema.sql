-- Create the database
CREATE DATABASE OwinoAdvocatesDB;
USE OwinoAdvocatesDB;

-- Table: Clients
CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(150) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20) UNIQUE NOT NULL,
    Address TEXT
);

-- Table: Lawyers
CREATE TABLE Lawyers (
    LawyerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(150) NOT NULL,
    Specialty VARCHAR(100),
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20) UNIQUE NOT NULL
);

-- Table: Cases
CREATE TABLE Cases (
    CaseID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    LawyerID INT NOT NULL,
    CaseType VARCHAR(100) NOT NULL,
    CaseStatus VARCHAR(50) DEFAULT 'Open',
    CaseDescription TEXT,
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (LawyerID) REFERENCES Lawyers(LawyerID)
);

-- Table: Appointments
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    LawyerID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Notes TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (LawyerID) REFERENCES Lawyers(LawyerID)
);

-- Table: Documents
CREATE TABLE Documents (
    DocumentID INT AUTO_INCREMENT PRIMARY KEY,
    CaseID INT NOT NULL,
    FileName VARCHAR(200) NOT NULL,
    FilePath VARCHAR(255) NOT NULL,
    UploadedDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CaseID) REFERENCES Cases(CaseID)
);

-- Insert sample data
INSERT INTO Clients (FullName, Email, Phone, Address)
VALUES 
('John Doe', 'johndoe@email.com', '0712345678', 'Nairobi, Kenya'),
('Jane Smith', 'janesmith@email.com', '0722334455', 'Mombasa, Kenya');

INSERT INTO Lawyers (FullName, Specialty, Email, Phone)
VALUES
('Adv. Peter Owino', 'Corporate Law', 'owino@owinoadvocates.com', '0733445566'),
('Adv. Mary Atieno', 'Criminal Law', 'atieno@owinoadvocates.com', '0744556677');

INSERT INTO Cases (ClientID, LawyerID, CaseType, CaseStatus, CaseDescription, StartDate)
VALUES
(1, 1, 'Contract Dispute', 'Open', 'Breach of contract case for John Doe', '2025-09-01'),
(2, 2, 'Criminal Defense', 'Open', 'Defense for Jane Smith in a criminal case', '2025-09-10');

INSERT INTO Appointments (ClientID, LawyerID, AppointmentDate, Notes)
VALUES
(1, 1, '2025-10-05 10:00:00', 'Discuss evidence for contract dispute'),
(2, 2, '2025-10-06 14:00:00', 'Prepare for court hearing');

INSERT INTO Documents (CaseID, FileName, FilePath)
VALUES
(1, 'contract_evidence.pdf', '/docs/case1/contract_evidence.pdf'),
(2, 'court_notice.pdf', '/docs/case2/court_notice.pdf');
