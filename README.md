# Project Title: Personalized Preventive Care Recommendations Using Clustering and Power BI

---

## 📌 Project Overview

**Goal**: Use clustering to group members by utilization patterns and personalize preventive care recommendations based on cluster characteristics. Visualize insights in Power BI.

---

## 🧠 Step 1: Define Your Dataset & Objective

**Dataset**: Synthetic claims data (e.g., SynPUF) simulating real-world healthcare claims.

**Key Tables to Include**:

- Beneficiary summary (demographics, chronic conditions)
- Outpatient & inpatient claims (dates, diagnoses, costs)
- Procedure codes (to infer preventive care actions)

**Objective**: Segment patients and recommend preventive services (e.g., screenings, wellness visits) tailored to each segment.

---

## 📊 Step 2: Data Preprocessing

- Clean missing/duplicate data
- Create member-level summaries:
  - Number of visits
  - Total cost
  - Chronic condition count
  - Age, gender, region
- Feature engineering:
  - Total cost
  - Preventive vs non-preventive visits
  - Chronic condition indicators

---

## 🔍 Step 3: Clustering Analysis

Use **unsupervised learning (KMeans)** to cluster patients by utilization patterns.

**Key Variables**:

- Total annual cost
- Number of preventive visits
- Number of chronic conditions
- Number of ER visits
- Number of inpatient stays

**Goal**: Identify 3–6 meaningful clusters (e.g., high utilizers with chronic conditions, young healthy non-users).

---

## 📈 Step 4: Preventive Care Recommendations

For each cluster, compare recommended guidelines (e.g., USPSTF or CMS quality measures) to actual utilization. Identify gaps.

**Examples**:

- Cluster A (young women): Low Pap smear screening → recommend reminder system
- Cluster B (older adults): High chronic burden, low wellness visits → recommend outreach program

---

## 📊 Step 5: Power BI Dashboard

Create an interactive Power BI report:

- Cluster summaries
- Preventive care gaps by segment
- Member-level drill-down
- Filters by age, gender, chronic condition

---

## ⚙️ Tools & Tech

- Python: Pandas, Scikit-learn (for clustering)
- SQL or Pandas: For data aggregation
- Power BI: For visualization

---
