-- Total Number of Loan Aoolication
SELECT COUNT(id) AS total_application FROM dbo.loan

-- Total Application by Specific Month (December)
SELECT COUNT(id) AS total_application_december FROM dbo.loan 
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Total Loan Ammount
SELECT SUM(loan_amount) AS total_funds FROM dbo.loan

-- Total Loan Ammount for a Particular Month (December)
SELECT SUM(loan_amount) AS total_loan_amount FROM dbo.loan
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- Total Payment Received
SELECT SUM(total_payment) AS total_payment_received FROM dbo.loan

-- Average Interest Rate
SELECT ROUND(AVG(int_rate), 2)*100 AS avg_interest_rate FROM dbo.loan

-- Average DTI
SELECT ROUND(AVG(dti)*100, 2) AS avg_dti FROM dbo.loan

------------------------------------------------ Good Loan ---------------------------------------------

-- Good Loan Percentage
SELECT 
	(COUNT(CASE WHEN loan_status = 'Current' OR loan_status = 'Fully Paid' THEN id END) * 100) / COUNT(id) AS good_loan_pct
FROM 
	dbo.loan
	
-- Total Good Loan Applications
SELECT COUNT(id) AS total_good_loan_applications FROM dbo.loan 
WHERE loan_status = 'Current' OR loan_status = 'Fully Paid'

-- Total Good Loan Amount
SELECT SUM(loan_amount) AS total_good_loan_amount FROM dbo.loan 
WHERE loan_status = 'Current' OR loan_status = 'Fully Paid'

-- Total Good Loan Amount Received
SELECT SUM(total_payment) AS total_good_loan_amount_received FROM dbo.loan 
WHERE loan_status = 'Current' OR loan_status = 'Fully Paid'


------------------------------------------ Bad Loan -------------------------------------------
-- Bad Loan Application Percentage
SELECT
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) / COUNT(id)
FROM dbo.loan


-- Total Bad Loan Applications
SELECT COUNT(id) AS total_bad_loan_applications FROM dbo.loan
WHERE loan_status = 'Charged Off'


-- Total Bad Loan Amount
SELECT SUM(loan_amount) AS total_good_loan_amount FROM dbo.loan
WHERE loan_status = 'Charged Off'


-- Total Bad Loan Amount Received
SELECT SUM(total_payment) AS total_good_loan_amount_received FROM dbo.loan
WHERE loan_status = 'Charged Off'


-- Loan Status Grid View
SELECT 
	loan_status, 
	COUNT(id) AS total_loan_application,
	SUM(total_payment) AS total_amount_received,
	SUM(loan_amount) AS total_amount,
	ROUND(AVG(int_rate)*100, 2) AS avg_interest_rate_pct,
	ROUND(AVG(dti)*100, 2) AS avg_dti_pct
FROM dbo.loan
GROUP BY loan_status


-- Month to Month Comparison
SELECT
	MONTH(issue_date),
	DATENAME(MM, issue_date) AS month,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY DATENAME(MM, issue_date), MONTH(issue_date)
ORDER BY MONTH(issue_date)


-- Trend by State
SELECT
	address_state AS state,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY address_state
ORDER BY total_funded_amount DESC

-- Loan Term
SELECT
	term,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY term
ORDER BY term DESC

-- Employee Length Analysis
SELECT
	emp_length,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY emp_length
ORDER BY emp_length DESC

-- Loan Purpose Analysis
SELECT
	purpose,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY purpose
ORDER BY total_applications DESC

-- Home Ownership Analysis
SELECT
	home_ownership,
	COUNT(id) AS total_applications,
	SUM(loan_amount) AS total_funded_amount,
	SUM(total_payment) AS total_received_amount
FROM dbo.loan
GROUP BY home_ownership
ORDER BY home_ownership DESC