-- Simulasi 

-- Seseorang ingin mendaftarkan sebagai lender
INSERT INTO Lender VALUES ('LE011','Andi','Male','2020-01-23','2002-12-12')

-- Andi ingin meminjamkan duit ( LendTransaction ) dengan lendtype1 (10% Rate of Interest dan durasi 10 hari) dan paymenttype1 dan dengan maksimum meminjamkan 1000000
INSERT INTO LendTransaction VALUES ('HLT016','ST001','LE011','LT001','2020-01-24',1000000,'PT001')

-- Andi ingin mengganti lendtype menjadi lendtype2 ( 11 % Rate of Interest and 11 hari )
UPDATE LendTransaction SET LendTypeID = 'LT002' WHERE LenderID = 'LE011'

-- Andi ingin mengganti paymenttype menjadi paymenttype2
UPDATE LendTransaction SET PaymentTypeID = 'PT002' WHERE LenderID = 'LE011'

-- Andi ingin melihat detail information
SELECT LendID,S.StaffID,StaffName,L.LenderID,LenderName,LendTypeName,TransactionDate,LendMoneyAmount,PaymentTypeName 
FROM Staff S JOIN LendTransaction LT ON S.StaffID = LT.StaffID JOIN Lender L ON L.LenderID = LT.LenderID JOIN LendType LT2 ON LT.LendTypeID = LT2.LendTypeID JOIN PaymentType PT ON LT.PaymentTypeID = PT.PaymentTypeID
WHERE L.LenderID = 'LE011'

-- Seseorang ingin mendaftar sebagai borrower
INSERT INTO Borrower VALUES ('BO011','Caca','Female','2020-01-27','1999-12-23','Jalan Kedoya No 1')

-- Caca hanya dapat meminjam sebanyak 1000000 ( Borrow Transaction ) dengan borrowtype1 ( 17% Rate of Interest dan 10 hari)
INSERT INTO BorrowTransaction VALUES ('HBT016','ST001','BO011','2020-01-28',1000000,'BT001')

-- Caca ingin mengganti borrowtype menjadi borrowtype2 (17% Rate of Interest dan 11 hari)
UPDATE BorrowTransaction SET BorrowTypeID = 'BT002' WHERE BorrowerID = 'BO011'

-- Caca ingin melihat detail information
SELECT BorrowID,S.StaffID,StaffName,B.BorrowerID,BorrowerName,BorrowTypeName,TransactionDate,BorrowMoneyAmount 
FROM Staff S JOIN BorrowTransaction BT ON S.StaffID = BT.StaffID JOIN Borrower B ON B.BorrowerID = BT.BorrowerID JOIN BorrowType BT2 ON BT.BorrowTypeID = BT2.BorrowTypeID
WHERE B.BorrowerID = 'BO011'

-- Caca ingin mencari lender yang dapat meminjamkan sebanyak 1000000
SELECT LendID,L.LenderID,LenderName,LendTypeName,CONVERT(VARCHAR,LendRoI) + '%' AS 'Rate of Interest',CONVERT(VARCHAR,(DAY(LendDuration)-DAY(getdate()))) + ' Day(s)' AS 'LendDuration',LendMoneyAmount,PaymentTypeName
FROM Lender L JOIN LendTransaction LT ON L.LenderID = LT.LenderID JOIN LendType LT2 ON LT.LendTypeID = LT2.LendTypeID JOIN PaymentType PT ON PT.PaymentTypeID = LT.PaymentTypeID
WHERE LendMoneyAmount = 1000000

-- Caca memilih Lender bernama Andi
INSERT INTO BorrowTransactionDetail VALUES ('HBT016','HLT016',1000000)

-- Jika Caca atau Andi berhenti sebagai borrower atau lender
-- karena BorrowTransactionDetail tidak bisa ON UPDATE CASCADE ON DELETE CASCADE
DELETE BorrowTransactionDetail FROM BorrowTransactionDetail BTD JOIN LendTransaction LT ON BTD.LendID = LT.LendID
WHERE LenderID = 'LE011'

DELETE FROM Lender WHERE LenderID = 'LE011'

DELETE FROM Borrower WHERE BorrowerID = 'BO011'