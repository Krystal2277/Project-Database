-- CASE --

-- Nomor 1
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT COUNT(L.LenderID) AS 'Total Lender' FROM Lender L JOIN LendTransaction LT ON L.LenderID = LT.LenderID JOIN LendType LT2 ON LT.LendTypeID = LT2.LendTypeID
WHERE DAY(LendDuration) >= 15 AND DAY(LendDuration) <= 25 AND LendMoneyAmount > 2500000
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 2
SELECT MAX(BorrowMoneyAmount) AS 'Highest Transaction', CONVERT(VARCHAR,DAY(TransactionDate) - DAY(BorrowerJoinDate)) + ' day(s)' AS 'Day Passed' FROM Borrower B JOIN BorrowTransaction BT ON B.BorrowerID = BT.BorrowerID JOIN BorrowType BT2 on BT.BorrowTypeID = BT2.BorrowTypeID
WHERE DATEDIFF(YEAR,BorrowerJoinDate,TransactionDate) = 1 AND BorrowRoI > 16
GROUP BY TransactionDate, BorrowerJoinDate
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 3
SELECT SUBSTRING(StaffName,0,CHARINDEX(' ',StaffName,0)) AS 'First Name', SUBSTRING(StaffName,CHARINDEX(' ',StaffName,0),LEN(StaffName)) AS 'Last Name', COUNT(BorrowID) + COUNT(LendID) AS 'Total Transaction', SUM(BorrowMoneyAmount) + SUM(LendMoneyAmount) AS 'Money Handled' FROM Staff S JOIN LendTransaction LT ON S.StaffID = LT.StaffID JOIN BorrowTransaction BT ON S.StaffID = BT.StaffID
GROUP BY StaffName
HAVING COUNT(BorrowID) + COUNT(LendID) >= 5 AND SUM(BorrowMoneyAmount) + SUM(LendMoneyAmount) > 25000000
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 4
SELECT LenderName, COUNT(LendID) AS 'Total Transaction', (SELECT AVG(LendMoneyAmount) FROM LendTransaction) AS 'Average Lend' FROM Lender L JOIN LendTransaction LT ON L.LenderID = LT.LenderID
WHERE MONTH(TransactionDate) = 7 AND YEAR(TransactionDate) = 2020
GROUP BY LenderName
ORDER BY (SELECT AVG(LendMoneyAmount) FROM LendTransaction) DESC
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 5
SELECT CASE WHEN LenderGender = 'Male' THEN 'Mr.' + LenderName WHEN LenderGender = 'Female' THEN 'Mrs.' + LenderName END, DATEDIFF(YEAR,LenderDoB,GETDATE()) AS 'LenderAge', TransactionDate, LendMoneyAmount FROM Lender L JOIN LendTransaction LT ON L.LenderID = LT.LenderID
GROUP BY LenderDoB, TransactionDate, LendMoneyAmount, LenderName, LenderGender
HAVING (SELECT AVG(LendMoneyAmount) FROM LendTransaction) < LendMoneyAmount
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 6
SELECT LendID AS 'LendTransactionID', UPPER(LenderName) AS 'LenderName', CONVERT(VARCHAR,LendMoneyAmount) + ' IDR' AS 'Available Money',  FORMAT(TransactionDate,'M-dd,yyyy','en-US') AS 'TransactionDate' FROM Lender L JOIN LendTransaction LT ON L.LenderID = LT.LenderID
WHERE LendMoneyAmount < (SELECT AVG(LendMoneyAmount) FROM LendTransaction) AND LendMoneyAmount >= 0
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 7
SELECT STUFF(BT.BorrowID,1,3,'Transaction ') AS 'Transaction Number', CONVERT(VARCHAR,CONVERT(DECIMAL(38,2), (BorrowMoneyAmount - AmountOfMoney)/15000)) + ' USD' AS 'Money Left', 'in ' + CONVERT(VARCHAR,DAY(TransactionDate) + DAY(BorrowDuration)) + ' day(s)' AS 'Due Date' FROM BorrowTransaction BT JOIN BorrowType BT2 ON BT.BorrowTypeID = BT2.BorrowTypeID JOIN BorrowTransactionDetail BTD ON BTD.BorrowID = BT.BorrowID
GROUP BY BT.BorrowID, AmountOfMoney, BorrowMoneyAmount, TransactionDate, BorrowDuration
HAVING AmountOfMoney < MIN(BorrowMoneyAmount) OR AmountOfMoney > MAX(BorrowMoneyAmount)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 8
SELECT STUFF(StaffID,1,2,'Stuff Number ') AS 'StaffId',StaffName, LEFT(StaffGender,1) AS 'Staff Gender', FORMAT(StaffSalary,'C','id-ID') AS 'StaffSalary', LOWER(StaffAddress) AS 'StaffAddress' FROM Staff
WHERE StaffSalary < (SELECT AVG(BorrowMoneyAmount) FROM BorrowTransaction) AND StaffSalary = (SELECT MIN(StaffSalary) FROM Staff)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 9
CREATE VIEW MaxAndMinBorrow
AS
SELECT CONVERT(VARCHAR,MAX(BorrowMoneyAmount)) + ' IDR' AS 'Max Borrow', CONVERT(VARCHAR,MIN(BorrowMoneyAmount)) + ' IDR' AS 'Min Borrow' FROM BorrowTransaction BT JOIN BorrowType BT2 ON BT.BorrowTypeID = BT2.BorrowTypeID
WHERE BorrowRoI >= 15 AND BorrowRoI <= 20 AND BorrowMoneyAmount >= 0
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Nomor 10
CREATE VIEW AverageLendSummary
AS
SELECT (SELECT AVG(LendMoneyAmount) FROM LendTransaction) AS 'Average Lend', COUNT(LendID) AS 'Total Lend' FROM LendTransaction LT JOIN Staff S ON LT.StaffID = S.StaffID
WHERE StaffGender = 'Male' AND MONTH(TransactionDate) = 8
-------------------------------------------------------------------------------------------------------------------------------------------------------------------