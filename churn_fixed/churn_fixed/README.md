# 🏦 Bank Customer Churn — Predictive Modeling & Risk Scoring Dashboard

> **Submission-ready project** | European Bank Dataset | 10,000 Customers | 5 ML Models

---

## 📁 Project Structure

```
churn_project/
├── app.py                    ← Main Streamlit entry point
├── requirements.txt          ← Python dependencies
├── install.sh                ← One-command installer
├── README.md                 ← This file
│
├── data/
│   └── European_Bank.csv     ← Real dataset (10,000 rows)
│
├── models/                   ← Auto-generated on first run
│   ├── trained_models.pkl
│   ├── scaler.pkl
│   └── split_data.pkl
│
├── utils/
│   ├── data_loader.py        ← Data loading, preprocessing, feature engineering
│   ├── model_trainer.py      ← Model training, evaluation, prediction utilities
│   └── charts.py             ← All chart/visualisation functions
│
└── pages/
    ├── page_home.py          ← Home overview + KPIs
    ├── page_eda.py           ← Exploratory Data Analysis (4 tabs)
    ├── page_models.py        ← Model comparison + feature importance (4 tabs)
    ├── page_calc.py          ← Individual customer risk calculator
    ├── page_whatif.py        ← What-if scenario simulator (3 tabs)
    ├── page_report.py        ← Batch risk report + CSV download
    └── page_summary.py       ← Project methodology + recommendations
```

---

## 🚀 Quick Start

### Step 1 — Install dependencies

```bash
cd churn_project
bash install.sh
```

Or manually:

```bash
pip install streamlit pandas numpy scikit-learn matplotlib seaborn joblib scipy
```

### Step 2 — Run the dashboard

```bash
streamlit run app.py
```

Open: **http://localhost:8501**

---

## 📊 Dataset

| Field          | Description                     |
|----------------|---------------------------------|
| CreditScore    | Customer creditworthiness (350–850) |
| Geography      | France / Germany / Spain        |
| Gender         | Male / Female                   |
| Age            | Customer age (18–92)            |
| Tenure         | Years with the bank (0–10)      |
| Balance        | Account balance (€0–250,000)    |
| NumOfProducts  | Number of bank products (1–4)   |
| HasCrCard      | Has credit card (0/1)           |
| IsActiveMember | Active engagement (0/1)         |
| EstimatedSalary| Annual salary estimate (€)      |
| **Exited**     | **Target: 1=Churned, 0=Retained** |

---

## 🤖 Models

| Model                | ROC-AUC | F1-Score | Notes                  |
|----------------------|---------|----------|------------------------|
| Gradient Boosting    | ~0.868  | ~0.601   | ✅ **Best overall**    |
| Random Forest        | ~0.864  | ~0.565   | Strong, stable         |
| Voting Ensemble      | ~0.863  | ~0.541   | Conservative           |
| Decision Tree        | ~0.848  | ~0.563   | Most interpretable     |
| Logistic Regression  | ~0.773  | ~0.286   | Baseline reference     |

---

## 🗺️ Dashboard Pages

| Page                  | Description                                             |
|-----------------------|---------------------------------------------------------|
| 🏠 Home Overview      | KPI cards, churn distribution, model leaderboard        |
| 📊 Exploratory Analysis | 4 tabs: distributions, geo/demographics, products, correlations |
| 🤖 Model Performance  | Metric comparison, ROC curves, confusion matrices, feature importance |
| 🎯 Risk Calculator    | Single-customer churn score + all-model comparison      |
| 🔬 What-If Simulator  | Real-time parameter explorer + sensitivity analysis     |
| 📋 Batch Risk Report  | 2,000 scored customers + filter + CSV download          |
| 📖 Project Summary    | Objectives, methodology, results, recommendations       |

---

## 🔑 Key Findings

1. **Overall churn rate: 20.37%** (imbalanced — 79.6% retained)
2. **Germany has 32.4% churn** — highest of all 3 countries
3. **Customers with 3+ products churn at >80%** (critical signal)
4. **Inactive members churn 2× more** than active (26.9% vs 14.3%)
5. **Age is the #1 predictive feature** — 50+ cohort highest risk
6. **Top model (Gradient Boosting):** ROC-AUC = 0.8682, CV-AUC = 0.8614

---

## 📦 Feature Engineering

Eight new features were derived:

| Feature                  | Formula                              |
|--------------------------|--------------------------------------|
| Balance_Salary_Ratio     | Balance / (EstimatedSalary + 1)      |
| Product_Density          | NumOfProducts / (Tenure + 1)         |
| Engagement_Product       | IsActiveMember × NumOfProducts       |
| Age_Tenure_Interaction   | Age × Tenure                         |
| Zero_Balance             | 1 if Balance == 0                    |
| Is_Senior                | 1 if Age > 50                        |
| High_Balance             | 1 if Balance > median(Balance)       |
| CreditScore_Band         | Ordinal 1–5 (Poor → Excellent)       |

---

## 👩‍💻 Tech Stack

- **Python 3.10+**
- **Streamlit** — interactive web dashboard
- **scikit-learn** — all ML models
- **pandas / numpy** — data processing
- **matplotlib / seaborn** — visualisations
- **joblib** — model serialisation

---

*Project: Predictive Modeling and Risk Scoring for Bank Customer Churn*
