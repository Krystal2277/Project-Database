CREATE DATABASE MyAset

USE MyAset

-------------------------------------------------------------------------------------------
CREATE TABLE Staff
(
	StaffID VARCHAR(5) PRIMARY KEY,
	StaffName VARCHAR(255) NOT NULL,
	StaffGender CHAR(6) NOT NULL,
	StaffDoB  DATE NOT NULL,
	StaffSalary INT NOT NULL, 
	StaffAddress VARCHAR(255) NOT NULL,
	CONSTRAINT S1 CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	CONSTRAINT S2 CHECK (StaffGender IN ('Male','Female')),
	CONSTRAINT S3 CHECK (YEAR(StaffDoB) < YEAR(getdate()) - 17)
)
-------------------------------------------------------------------------------------------
CREATE TABLE Lender
(
	LenderID VARCHAR(5) PRIMARY KEY,
	LenderName VARCHAR(255) NOT NULL,
	LenderGender CHAR(6) NOT NULL,
	LenderJoinDate DATE NOT NULL,
	LenderDoB DATE NOT NULL,
	CONSTRAINT L1 CHECK (LenderID LIKE 'LE[0-9][0-9][0-9]'),
	CONSTRAINT L2 CHECK (LenderGender IN('Male','Female'))
)
-------------------------------------------------------------------------------------------
CREATE TABLE Borrower
(
	BorrowerID VARCHAR(5) PRIMARY KEY,
	BorrowerName VARCHAR(255) NOT NULL,
	BorrowerGender CHAR(6) NOT NULL,
	BorrowerJoinDate DATE NOT NULL,
	BorrowerDoB DATE NOT NULL,
	BorrowerAddress VARCHAR(255) NOT NULL,
	CONSTRAINT B1 CHECK (BorrowerID LIKE 'BO[0-9][0-9][0-9]'),
	CONSTRAINT B2 CHECK (BorrowerGender IN ('Male','Female')),
	CONSTRAINT B3 CHECK (YEAR(BorrowerDoB) < YEAR(getdate()) - 17)
)
-------------------------------------------------------------------------------------------
CREATE TABLE LendType
(
	LendTypeID VARCHAR(5) PRIMARY KEY,
	LendTypeName VARCHAR(255) NOT NULL,
	LendRoI FLOAT NOT NULL,
	LendDuration DATE NOT NULL,
	CONSTRAINT LT1 CHECK (LendTypeID LIKE 'LT[0-9][0-9][0-9]'),
	CONSTRAINT LT2 CHECK (DAY(LendDuration) > 0)
)
-------------------------------------------------------------------------------------------
CREATE TABLE PaymentType
(
	PaymentTypeID VARCHAR(5) PRIMARY KEY,
	PaymentTypeName VARCHAR(255) NOT NULL,
	CONSTRAINT PT1 CHECK (PaymentTypeID LIKE 'PT[0-9][0-9][0-9]')
)
-------------------------------------------------------------------------------------------
CREATE TABLE LendTransaction
(
	LendID VARCHAR(6) PRIMARY KEY,
	StaffID VARCHAR(5) NOT NULL,
	LenderID VARCHAR(5) NOT NULL,
	LendTypeID VARCHAR(5) NOT NULL,
	TransactionDate DATE NOT NULL,
	LendMoneyAmount INT NOT NULL,
	PaymentTypeID VARCHAR(5) NOT NULL,
	FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (LenderID) REFERENCES Lender(LenderID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (LendTypeID) REFERENCES LendType(LendTypeID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (PaymentTypeID) REFERENCES PaymentType(PaymentTypeID) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT LTr1 CHECK (LendID LIKE 'HLT[0-9][0-9][0-9]')
)
-------------------------------------------------------------------------------------------
CREATE TABLE BorrowType
(
	BorrowTypeID VARCHAR(5) PRIMARY KEY,
	BorrowTypeName VARCHAR(255) NOT NULL,
	BorrowRoI FLOAT NOT NULL,
	BorrowDuration DATE NOT NULL,
	CONSTRAINT BT1 CHECK (BorrowTypeID LIKE 'BT[0-9][0-9][0-9]'),
	CONSTRAINT BT2 CHECK (DAY(BorrowDuration) > 0)
)
-------------------------------------------------------------------------------------------
CREATE TABLE BorrowTransaction
(
	BorrowID VARCHAR(6) PRIMARY KEY,
	StaffID VARCHAR(5) NOT NULL,
	BorrowerID VARCHAR(5) NOT NULL,
	TransactionDate DATE NOT NULL,
	BorrowMoneyAmount INT NOT NULL,
	BorrowTypeID VARCHAR(5) NOT NULL,
	FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (BorrowTypeID) REFERENCES BorrowType(BorrowTypeID) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT BTr1 CHECK (BorrowID LIKE 'HBT[0-9][0-9][0-9]')
)
-------------------------------------------------------------------------------------------
CREATE TABLE BorrowTransactionDetail
(
	BorrowID VARCHAR(6),
	LendID VARCHAR(6),
	AmountOfMoney INT NOT NULL,
	PRIMARY KEY(BorrowID,LendID),
	FOREIGN KEY (BorrowID) REFERENCES BorrowTransaction(BorrowID),
	FOREIGN KEY (LendID) REFERENCES LendTransaction(LendID)
)
-------------------------------------------------------------------------------------------