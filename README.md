# 🏦 Bank Loan Report using Tableau and SQL
<img width="1584" height="396" alt="Bank Loan Analysis" src="https://github.com/user-attachments/assets/5709dce8-07d8-4dd7-a376-54dceb1310b1" />

---

## 👀 What’s This Project About?

This project helps you track and understand your bank’s loan portfolio. It uses SQL to process raw data and Tableau to turn that into easy-to-read dashboards. Great for lenders, analysts, or anyone interested in loan insights.

> ✅ [Live Dashboard](https://public.tableau.com/shared/C838TXB2R?:display_count=n&:origin=viz_share_link)  
> ✅ [View SQL queries](queries.sql)

---

## 🎯 Objective
Build a comprehensive reporting system to monitor the bank’s loan portfolio performance using key metrics and distinguish between Good and Bad loans based on loan status.

---

## ❓ Key Business Questions
 - Total Loan Applications.
 - Total Funded Amount.
 - Total Amount Received
 - Average Interest Rate
 - Average Debt-to-Income Ratio (DTI)
 - Good Loan vs Bad Loan Analysis
 - Monthly Trends of Applications and Funded Amount
 - Analysis by State
 - Breakdown on the basis of Employee Length, Purpose and Home Ownership

---

## 🛠️ Tech Stack
 - PostgreSQL
 - Tableau
 - Github

---

## 📈 Dashboard Development
<img width="1299" height="799" alt="Dashboard 1" src="https://github.com/user-attachments/assets/5f879e0a-92cb-4a95-90d0-6308f1627c8a" />

<img width="1299" height="799" alt="Dashboard 2" src="https://github.com/user-attachments/assets/8a2edac7-daa4-4f6b-bf2b-aaf0057dc618" />

- **KPIs** : There are 4 main KPIs present. Total Loan Applications, Total Loan Amount Funded, Total Payment Received, Interest Average Percentage and DTI Average Percentage.
- **Slicer** :Issue Date Slicer

---

## ✅ Solution

<img width="936" height="247" alt="Overview" src="https://github.com/user-attachments/assets/c00fcfbc-1fb1-4af8-97d1-deac7b1f88aa" />  

### 📌 KPIs
- **Total Loan Applications**: 38,576
- **Total Loan Amount**: $435.76M
- **Total Payment Collected**: $473.07M
- **Average Interest Rate**: 12.05%
- **Average DTI (Debt-to-Income)**: 13.33%

---

### ✅ Loan Quality
- **Good Loans**: 86.18%
- **Bad Loans**: 13.82%

---

### 📈  Trend Over Time
- Funded Amount shows a seasonal pattern—a modest start in January–February, steady growth through spring and summer, and a strong finish peaking in December.
- Same with Loan applications, starting low in January (~2,332), dipping slightly in February (~2,279), then rising steadily from March (~2,627) through the end of the year, reaching a peak of 4,314 in December


---

### 💳 Loan Status
- **Fully Paid**: 87%
- **Charged Off**: 7.87%
- **Current**: 5.13%

---


### 🌍 State-Level Breakdown

 - By Loan funding:
   - California (CA) leads with approximately $78.5M
   - Followed by New York (NY) at $42.1M
   - Texas (TX) ranks third at around $31.2M
  

 - By Loan Applications
   - California (CA - 6,894 applications) has the largest share.
   - New York (NY) 3,701 applications.
   - Texas (TX) and Florida (FL) 2,664 and 2,773 respectively.

---

### 🔍 Loan Purpose Distribution
- **Top Purpose**: Debt Consolidation (18.2K applications)
- Followed by:
  - Credit Card: 5K
  - Other: 3.8K
  - Home Improvement: 2.9K
- **Least Common**: Medical (0.7K), Wedding (0.9K)

---

### 🏠 Home Ownership
- **Renters**: 47.92%
- **Mortgage Holders**: 44.70%
- **Homeowners**: 7.38%

---

### 💼 Employment Length
- Highest: **10+ years** (8.9K applications)
- Others:
  - <1 year: 4.6K
  - 2 years: 4.4K
  - 3 years: 4.1K

---

### ⏳ Loan Term Preferences
- **36 months**: 73.2%
- **60 months**: 26.8%

---
