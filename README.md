# IBM Applied Data Science Capstone Project
## SpaceX Falcon 9 Launch Analysis and Landing Prediction

**Author:** Atharv Jadhav  
**GitHub Repository:** https://github.com/atharvv1820/IBM-Applied-Data-Science-Capstone

## 1. Project Overview

This project analyzes historical SpaceX Falcon 9 launch data to explore launch patterns, payload masses, orbit types, launch sites, and landing-related outcomes. It also applies machine learning classification models to predict the dataset's `Class` label.

The project follows a data science workflow covering data collection, data wrangling, exploratory data analysis, SQL analysis, interactive visualization, and predictive modeling.

## 2. Objectives

- Collect and organize SpaceX launch data.
- Clean and prepare data for analysis.
- Explore launch trends by year, launch site, orbit, and payload mass.
- Perform SQL queries to answer questions about launch records.
- Visualize launch locations using Folium.
- Create interactive charts and dashboard outputs using Plotly and Dash.
- Compare multiple machine learning models.
- Communicate findings, limitations, and recommendations.

## 3. Technologies Used

- **Python** — data processing and analysis
- **Pandas and NumPy** — data manipulation
- **Matplotlib and Seaborn** — exploratory data visualization
- **SQL and SQLite** — structured data queries
- **Scikit-learn** — machine learning
- **Folium** — geographic visualization
- **Plotly** — interactive charts
- **Dash** — interactive dashboard development
- **Jupyter Notebook / Google Colab** — development environment
- **GitHub** — project version control and sharing

## 4. Project Dataset

The repository includes the following datasets used during analysis:

| File | Description |
|---|---|
| `dataset_part_1.csv` | Launch records, payloads, sites, orbits, and outcomes |
| `dataset_part_2.csv` | Launch records including the `Class` target |
| `dataset_part_3.csv` | Encoded categorical launch data |
| `spacex_web_scraped.csv` | Web-scraped data extract |
| `spacex_launch_dash.csv` | Data prepared for dashboard analysis |
| `spacex_launch_geo.csv` | Launch records with geographic coordinates |

The datasets contain different numbers of records. Results should therefore be interpreted in the context of the specific file used for each analysis.

## 5. Methodology

### 5.1 Data Collection

The project used public SpaceX launch-data extracts. Attempts to access the live API encountered server/connection errors, so CSV files were used as a fallback. The API collection notebook should document any successful API requests and their responses if the collection step is rerun.

### 5.2 Data Wrangling

The data preparation workflow includes inspecting the datasets, selecting relevant columns, preparing categorical variables, and preparing features for analysis and modeling. Missing-value handling, encoding, and transformations should be reviewed in the notebooks for their exact implementation.

### 5.3 Exploratory Data Analysis

The analysis explored:

- Launch counts by year and launch site
- Payload mass in relation to flight number
- Launch and landing-related outcomes
- Orbit types and payload mass distributions
- Landing-related rates across years and orbits

The 90-record analysis dataset shows higher annual launch counts in later years, reaching 19 records in 2020.

### 5.4 SQL Analysis

SQLite queries were used to examine:

- Distinct launch sites
- Launch counts by site and year
- Average payload mass by orbit
- Distribution of the `Class` label
- Landing-related outcome frequencies
- Selected payload ranges and launch records

### 5.5 Geographic Analysis

Folium was used to create a map from the geographic launch dataset. The map supports inspection of launch locations and their spatial distribution.

### 5.6 Interactive Visualization

Plotly charts were generated for class distribution, payload mass, and launch-related relationships. HTML visualization files were saved as project outputs.

A Dash dashboard was also developed. Verify the app's execution and interaction before describing it as a deployed, live dashboard.

## 6. Machine Learning

Four classification algorithms were evaluated:

1. Logistic Regression
2. Decision Tree
3. K-Nearest Neighbors (KNN)
4. Support Vector Machine (SVM)

The recorded experiment used a 75/25 stratified train-test split with `random_state=42`. The target variable was `Class`.

### Model Results

| Model | Recorded test accuracy |
|---|---:|
| Decision Tree | 82.61% |
| K-Nearest Neighbors | 82.61% |
| Logistic Regression | 78.26% |
| Support Vector Machine | 78.26% |

Decision Tree and KNN achieved the highest recorded test accuracy in this experiment.

**Important limitation:** The test set contains only 23 records. These results are preliminary and should not be treated as definitive evidence of model performance. The meaning of `Class` must be confirmed from the dataset documentation before interpreting predictions as landing success or mission success.

## 7. Key Findings

- Launch activity in the available records increased substantially in later years.
- Launch sites and orbit categories differ in the number of recorded missions.
- Payload mass varies across orbit types.
- The recorded landing-related outcome rate changes across years and depends on the outcome-label definition used.
- Decision Tree and KNN tied for the best observed test accuracy at 82.61%.
- Small sample sizes and differences between datasets limit the strength of conclusions.

## 8. Repository Contents

The repository contains project notebooks, datasets, and analysis outputs. Relevant artifacts may include:

- Data collection notebook
- Data wrangling and exploratory analysis notebooks
- SQL analysis
- Machine learning experiments
- Folium map HTML
- Plotly chart HTML files
- Dashboard source code and outputs
- Final project report PDF

Refer to the actual files in this repository for the available implementation and results.

## 9. How to Run

1. Clone or download this repository.
2. Open the notebooks in Google Colab or Jupyter Notebook.
3. Upload or locate the required CSV datasets.
4. Install any missing Python dependencies.
5. Run the notebooks in order, following their instructions.
6. Open generated HTML files in a browser to inspect the visualizations.
7. If using Dash, run the application using the instructions in its source file.

Example clone command:

```bash
git clone https://github.com/atharvv1820/IBM-Applied-Data-Science-Capstone.git
```

## 10. Conclusion

This capstone project demonstrates an end-to-end data science workflow using SpaceX Falcon 9 launch data. It combines data preparation, exploratory analysis, SQL, geographic visualization, interactive charts, and machine learning model comparison.

Future improvements include validating data sources, documenting the web-scraping procedure, expanding model evaluation with cross-validation, and confirming the target-label definition.

## 11. Acknowledgments

This project was completed as part of the IBM Applied Data Science Capstone learning work. SpaceX launch-data extracts were used for educational analysis.

---

**Project Repository:**  
https://github.com/atharvv1820/IBM-Applied-Data-Science-Capstone
