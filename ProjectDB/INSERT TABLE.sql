-- Insert Master Table
------------------------------------------------------------------------------------------------------------------
INSERT INTO Staff VALUES ('ST001','Anjas Anjas','Male','2002-12-10',10000000,'Jalan Anggrek barat No 1')
INSERT INTO Staff VALUES ('ST002','Maikel Maikel','Male','2001-11-09',9000000,'Jalan Anggrek utara No 2')
INSERT INTO Staff VALUES ('ST003','Michael Dragon','Male','2000-10-08',8000000,'Jalan Anggrek selatan No 3')
INSERT INTO Staff VALUES ('ST004','Ezekiel Benaiah','Male','1999-09-07',7000000,'Jalan Anggrek timur No 4')
INSERT INTO Staff VALUES ('ST005','David Friedlee','Male','1998-08-06',6000000,'Jalan Anggrek barat No 5')
INSERT INTO Staff VALUES ('ST006','Nico Alvaro','Male','1997-07-05',5000000,'Jalan Anggrek utara No 6')
INSERT INTO Staff VALUES ('ST007','Michelle Victoria','Female','1996-06-04',4000000,'Jalan Anggrek utara No 7')
INSERT INTO Staff VALUES ('ST008','Elin Hendry','Female','1995-05-03',3000000,'Jalan Anggrek barat No 8')
INSERT INTO Staff VALUES ('ST009','Manda Manda','Female','1996-04-02',2000000,'Jalan Anggrek timur No 9')
INSERT INTO Staff VALUES ('ST010','Steven Christian','Male','1995-03-01',1000000,'Jalan Anggrek selatan No 10')
------------------------------------------------------------------------------------------------------------------
INSERT INTO Lender VALUES ('LE001','lender1','Male','2019-12-12','2002-12-12')
INSERT INTO Lender VALUES ('LE002','lender2','Female','2018-11-11','2001-11-11')
INSERT INTO Lender VALUES ('LE003','lender3','Male','2017-10-10','2000-10-10')
INSERT INTO Lender VALUES ('LE004','lender4','Female','2016-09-09','1999-09-09')
INSERT INTO Lender VALUES ('LE005','lender5','Male','2015-08-08','1998-08-08')
INSERT INTO Lender VALUES ('LE006','lender6','Female','2014-07-07','1997-07-07')
INSERT INTO Lender VALUES ('LE007','lender7','Male','2013-06-06','1996-06-06')
INSERT INTO Lender VALUES ('LE008','lender8','Female','2012-05-05','1995-05-05')
INSERT INTO Lender VALUES ('LE009','lender9','Male','2011-04-04','1994-04-04')
INSERT INTO Lender VALUES ('LE010','lender10','Female','2010-03-03','1993-03-03')
------------------------------------------------------------------------------------------------------------------
INSERT INTO Borrower VALUES ('BO001','borrower1','Male','2018-12-12','2002-12-12','Jalan Palmerah No 1')
INSERT INTO Borrower VALUES ('BO002','borrower2','Female','2017-11-11','2001-11-11','Jalan Palmerah No 2')
INSERT INTO Borrower VALUES ('BO003','borrower3','Male','2017-10-10','2000-10-10','Jalan Palmerah No 3')
INSERT INTO Borrower VALUES ('BO004','borrower4','Female','2016-09-09','1999-09-09','Jalan Palmerah No 4')
INSERT INTO Borrower VALUES ('BO005','borrower5','Male','2015-08-08','1998-08-08','Jalan Palmerah No 5')
INSERT INTO Borrower VALUES ('BO006','borrower6','Female','2014-07-07','1997-07-07','Jalan Palmerah No 6')
INSERT INTO Borrower VALUES ('BO007','borrower7','Male','2013-06-06','1996-06-06','Jalan Palmerah No 7')
INSERT INTO Borrower VALUES ('BO008','borrower8','Female','2012-05-05','1995-05-05','Jalan Palmerah No 8')
INSERT INTO Borrower VALUES ('BO009','borrower9','Male','2011-04-04','1994-04-04','Jalan Palmerah No 9')
INSERT INTO Borrower VALUES ('BO010','borrower10','Female','2010-03-03','1993-03-03','Jalan Palmerah No 10')
------------------------------------------------------------------------------------------------------------------
INSERT INTO PaymentType VALUES ('PT001','paymenttype1')
INSERT INTO PaymentType VALUES ('PT002','paymenttype2')
INSERT INTO PaymentType VALUES ('PT003','paymenttype3')
INSERT INTO PaymentType VALUES ('PT004','paymenttype4')
INSERT INTO PaymentType VALUES ('PT005','paymenttype5')
INSERT INTO PaymentType VALUES ('PT006','paymenttype6')
INSERT INTO PaymentType VALUES ('PT007','paymenttype7')
INSERT INTO PaymentType VALUES ('PT008','paymenttype8')
INSERT INTO PaymentType VALUES ('PT009','paymenttype9')
INSERT INTO PaymentType VALUES ('PT010','paymenttype10')
------------------------------------------------------------------------------------------------------------------
INSERT INTO LendType VALUES ('LT001','lendtype1',10,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+10))  -- 10 Days
INSERT INTO LendType VALUES ('LT002','lendtype2',11,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+11))  -- 11 Days
INSERT INTO LendType VALUES ('LT003','lendtype3',12,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+12))  -- 12 Days
INSERT INTO LendType VALUES ('LT004','lendtype4',13,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+13))  -- 13 Days
INSERT INTO LendType VALUES ('LT005','lendtype5',14,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+14))  -- 14 Days
INSERT INTO LendType VALUES ('LT006','lendtype6',15,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+15))  -- 15 Days
INSERT INTO LendType VALUES ('LT007','lendtype7',16,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+16))  -- 16 Days
INSERT INTO LendType VALUES ('LT008','lendtype8',17,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+17))  -- 17 Days
INSERT INTO LendType VALUES ('LT009','lendtype9',18,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+18))  -- 18 Days
INSERT INTO LendType VALUES ('LT010','lendtype10',19,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+19)) -- 19 Days
------------------------------------------------------------------------------------------------------------------
INSERT INTO BorrowType VALUES ('BT001','borrowtype1',17,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+10))  -- 10 Days
INSERT INTO BorrowType VALUES ('BT002','borrowtype2',17,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+11))  -- 11 Days
INSERT INTO BorrowType VALUES ('BT003','borrowtype3',12,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+12))  -- 12 Days
INSERT INTO BorrowType VALUES ('BT004','borrowtype4',13,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+13))  -- 13 Days
INSERT INTO BorrowType VALUES ('BT005','borrowtype5',14,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+14))  -- 14 Days
INSERT INTO BorrowType VALUES ('BT006','borrowtype6',15,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+15))  -- 15 Days
INSERT INTO BorrowType VALUES ('BT007','borrowtype7',16,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+16))  -- 16 Days
INSERT INTO BorrowType VALUES ('BT008','borrowtype8',17,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+17))  -- 17 Days
INSERT INTO BorrowType VALUES ('BT009','borrowtype9',18,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+18))  -- 18 Days
INSERT INTO BorrowType VALUES ('BT010','borrowtype10',19,CONVERT(VARCHAR,DATEPART(YEAR,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(MONTH,GETDATE())) + '-' + CONVERT(VARCHAR,DATEPART(DAY,GETDATE())+19)) -- 19 Days
------------------------------------------------------------------------------------------------------------------

-- Insert Transaction Table
------------------------------------------------------------------------------------------------------------------
INSERT INTO LendTransaction VALUES ('HLT001','ST001','LE001','LT001','2019-12-12',1000000,'PT001')
INSERT INTO LendTransaction VALUES ('HLT002','ST002','LE002','LT002','2018-11-11',2000000,'PT002')
INSERT INTO LendTransaction VALUES ('HLT003','ST003','LE003','LT003','2017-10-10',3000000,'PT003')
INSERT INTO LendTransaction VALUES ('HLT004','ST004','LE004','LT004','2016-09-09',4000000,'PT004')
INSERT INTO LendTransaction VALUES ('HLT005','ST005','LE005','LT005','2015-08-08',5000000,'PT005')
INSERT INTO LendTransaction VALUES ('HLT006','ST006','LE006','LT006','2014-07-07',6000000,'PT006')
INSERT INTO LendTransaction VALUES ('HLT007','ST007','LE007','LT007','2013-06-06',7000000,'PT007')
INSERT INTO LendTransaction VALUES ('HLT008','ST008','LE008','LT008','2012-05-05',8000000,'PT008')
INSERT INTO LendTransaction VALUES ('HLT009','ST009','LE009','LT009','2011-04-04',9000000,'PT009')
INSERT INTO LendTransaction VALUES ('HLT010','ST010','LE010','LT010','2020-07-03',10000000,'PT010')
INSERT INTO LendTransaction VALUES ('HLT011','ST001','LE001','LT001','2009-02-02',11000000,'PT001')
INSERT INTO LendTransaction VALUES ('HLT012','ST002','LE002','LT002','2008-01-01',12000000,'PT002')
INSERT INTO LendTransaction VALUES ('HLT013','ST003','LE003','LT003','2020-07-12',13000000,'PT003')
INSERT INTO LendTransaction VALUES ('HLT014','ST004','LE004','LT004','2006-11-11',14000000,'PT004')
INSERT INTO LendTransaction VALUES ('HLT015','ST005','LE005','LT005','2005-10-10',15000000,'PT005')
------------------------------------------------------------------------------------------------------------------
INSERT INTO BorrowTransaction VALUES ('HBT001','ST001','BO001','2019-12-15',10000000,'BT001')
INSERT INTO BorrowTransaction VALUES ('HBT002','ST002','BO002','2018-11-21',200000000,'BT002')
INSERT INTO BorrowTransaction VALUES ('HBT003','ST003','BO003','2017-10-10',3000000,'BT003')
INSERT INTO BorrowTransaction VALUES ('HBT004','ST004','BO004','2016-09-09',4000000,'BT004')
INSERT INTO BorrowTransaction VALUES ('HBT005','ST005','BO005','2015-08-08',5000000,'BT005')
INSERT INTO BorrowTransaction VALUES ('HBT006','ST006','BO006','2014-07-07',6000000,'BT006')
INSERT INTO BorrowTransaction VALUES ('HBT007','ST007','BO007','2013-06-06',7000000,'BT007')
INSERT INTO BorrowTransaction VALUES ('HBT008','ST008','BO008','2012-05-05',8000000,'BT008')
INSERT INTO BorrowTransaction VALUES ('HBT009','ST009','BO009','2011-04-04',9000000,'BT009')
INSERT INTO BorrowTransaction VALUES ('HBT010','ST010','BO010','2010-03-03',10000000,'BT010')
INSERT INTO BorrowTransaction VALUES ('HBT011','ST001','BO001','2009-02-02',11000000,'BT001')
INSERT INTO BorrowTransaction VALUES ('HBT012','ST002','BO002','2008-01-01',12000000,'BT002')
INSERT INTO BorrowTransaction VALUES ('HBT013','ST003','BO003','2007-12-12',13000000,'BT003')
INSERT INTO BorrowTransaction VALUES ('HBT014','ST004','BO004','2006-11-11',14000000,'BT004')
INSERT INTO BorrowTransaction VALUES ('HBT015','ST005','BO005','2005-10-10',15000000,'BT005')
------------------------------------------------------------------------------------------------------------------

-- Insert Transaction Detail Table
------------------------------------------------------------------------------------------------------------------
INSERT INTO BorrowTransactionDetail VALUES ('HBT001','HLT001',1010000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT002','HLT002',1020000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT003','HLT003',1030000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT004','HLT004',1040000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT005','HLT005',1050000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT006','HLT006',1060000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT007','HLT007',1070000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT008','HLT008',1080000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT009','HLT009',1090000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT010','HLT010',1100000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT011','HLT011',1110000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT012','HLT012',1120000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT013','HLT013',1130000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT014','HLT014',1140000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT015','HLT015',1150000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT001','HLT001',1160000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT002','HLT002',1170000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT003','HLT003',1180000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT004','HLT004',1190000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT005','HLT005',1200000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT006','HLT006',1210000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT007','HLT007',1220000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT008','HLT008',1230000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT009','HLT009',1240000)
INSERT INTO BorrowTransactionDetail VALUES ('HBT010','HLT010',1250000)
------------------------------------------------------------------------------------------------------------------