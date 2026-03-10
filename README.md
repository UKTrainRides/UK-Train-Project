# UK Railway Operations Analysis and Delay Prediction

## Overview/ Project Idea 

This project analyzes railway journey data to identify operational patterns, passenger behavior, and factors associated with train delays. The project demonstrates a complete data analytics workflow, progressing from raw data preparation and exploratory analysis to machine learning modeling and interactive visualization.

Using Python and modern data analysis tools, the project transforms raw railway operational data into meaningful insights and predictive capabilities. A machine learning model is trained using the Scikit-learn library to estimate the probability of train delays based on journey characteristics such as time of travel, ticket type, and travel patterns.

The project also includes interactive visualization tools to support exploration and decision-making. A Tableau dashboard presents key operational insights, while a Streamlit web application enables users to explore the dataset and generate delay predictions.

---

## Team Members

1. Abeer Nasim Bakr
2. Fatma Ashraf Hussein
3. Malak Mohamed Ali
4. Mariam Mohamed Mahmoud
5. Sara Nasim Bakr
6. Tarek Fekry Mahoub

---
Under the supervision & guidance of our:

## Instructor

* Dina Ezzat Abdelmeged

---

## Objectives/Plans In'shaa'Allah

* Clean and prepare raw railway data for analysis - DONE
* Perform exploratory data analysis to identify travel and delay patterns
* Engineer useful features from temporal and journey data
* Train and evaluate predictive models using Scikit-learn
* Build an interactive Streamlit application for delay prediction
* Develop a Tableau dashboard to communicate insights visually

---

## Roles and Responsibilities

Roles and responsibilities will be assigned flexibly for each proect phase and updated periodically as time progresses in'shaa'Allah.
**Phase 1** of our project plan is currently ongoing & responsibilities are as follows:

0. **Setting Up & Managing Github** - Mariam Mohamed Mahmoud & Malak Mohamed Ali
1. **Building a data model** – Mariam Mohamed Mahmoud
2. **Data Cleaning Using SQL** – All Team
3. **Data Cleaning & Preprocessing Using Python** – Malak Mohamed Ali
4. **Determining Data Analysis Questions** - Tarek Fekry Mahoub

---
## Project Files

You can find the full proect files here in'shaa'Allah:
https://drive.google.com/drive/folders/1iMn5vk1Li5_AlFTK6tCYtDRkoKAQ2lUY

---

## Dataset

The dataset contains railway journey records including travel details, ticket information, and operational attributes. These records are used to analyze travel behavior and investigate the factors contributing to train delays.

The data is processed through multiple stages:

1. **Raw data** – original dataset
2. **Cleaned data** – missing values and inconsistencies handled
3. **Processed data** – features engineered for machine learning

---

## Project Structure

```
UK-Train-Project/

│── README.md
│── requirements.txt
│
├── data/
│   ├── raw/
│   │   └── railway.csv
│   ├── cleaned/
│   │   └── cleaned_dataset.csv
│   └── processed/
│       └── modeling_dataset.csv
│
├── notebooks/
│   ├── 01_EDA.ipynb
│   ├── 02_Feature_Engineering.ipynb
│   ├── 03_Modeling.ipynb
│
├── models/
│   └── best_model.pkl
│
├── streamlit_app/
│   └── app.py
│
├── tableau/
│   └── dashboard.twb
│
└── report/
    └── final_report.pdf
```

---

## Project Workflow

### 1. Data Preparation

Raw data is examined, cleaned, and transformed into a structured format suitable for analysis.

### 2. Exploratory Data Analysis

Statistical summaries and visualizations are used to understand patterns in travel demand, ticket usage, and delay occurrences.

### 3. Feature Engineering

New variables are created from time and journey information to improve the predictive power of machine learning models.

### 4. Predictive Modeling

Machine learning models are trained using Scikit-learn to predict the likelihood of train delays. Model performance is evaluated using standard classification metrics.

### 5. Visualization and Application

Insights from the analysis are presented through:

* an interactive **Tableau dashboard**
* a **Streamlit web application** for data exploration and prediction

---

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-learn
* Streamlit
* Tableau
* GitHub

---

## Installation

Clone the repository:

```
git clone https://github.com/your-username/UK-Train-Project.git
```

Install required libraries:

```
pip install -r requirements.txt
```

---

## Running the Streamlit Application

Navigate to the application directory:

```
cd streamlit_app
```

Run the application:

```
streamlit run app.py
```

---

## Expected Outcomes

* Identification of major factors contributing to train delays
* Insights into passenger travel patterns and ticket usage
* A trained predictive model for delay likelihood estimation
* Interactive visualization tools for operational analysis

---

## License

This project is developed for educational and research purposes under the **Digital Egypt Pioneers Initiative**.
