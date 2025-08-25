# 🚀 Sales Conversion & Marketing Funnel Analysis

![Status](https://img.shields.io/badge/status-active-success)
![Made with](https://img.shields.io/badge/Made%20with-Python-blue)
![Jupyter](https://img.shields.io/badge/Notebook-Jupyter-orange)
![SQL](https://img.shields.io/badge/SQL-queries-informational)
![License](https://img.shields.io/badge/License-MIT-green)

Analyze how prospects move through your marketing funnel, find **drop‑offs**, and boost **conversion** with clean, reproducible notebooks and SQL. This repo walks through data cleaning → EDA → stats → visuals → insight synthesis, with a strong focus on **actionable KPIs**.

---

## 📌 Highlights

- 🔄 End‑to‑end workflow: **clean → analyze → visualize → recommend**
- 📉 Funnel metrics: stage‑wise **conversion & drop‑off rates**
- 🧪 Statistical checks: correlation, significance tests, uplift hints
- 🧾 SQL recipes for fast insight queries
- 📊 Polished visuals for stakeholders

---

## 🗂️ Project Structure

```
├── Data Exploration & Cleaning (Python).ipynb    # Ingest, clean, feature prep
├── Exploratory & Statistical Analysis.ipynb     # EDA, stats, correlations
├── Visualizations.ipynb                         # Funnel, cohorts, segments
├── SQL Tasks.sql                                # Reusable SQL insights
├── cleaned_market_campaign/                     # Cleaned/processed data
└── marketing_campaign (1).xls                   # Raw source (example)
```
> Update file names/folders here if your repo differs.

---

## 🎯 Business Questions Answered

- Where are the **largest drop‑offs** in the funnel?
- Which **segments** (age, channel, country, income, education, etc.) convert best?
- Which features **correlate with conversion**? Any potential levers?
- What **KPIs** should we track weekly to improve ROI?

---

## 📈 Key KPIs (examples)

| KPI | Formula | Why it matters |
|---|---|---|
| **Stage Conversion Rate** | `conversions_at_stage / entrants_to_stage` | Finds friction points |
| **Overall CVR** | `final_conversions / total_prospects` | North‑star effectiveness |
| **Drop‑off % by Stage** | `1 - stage_conversion_rate` | Prioritize fixes |
| **Qualified Rate** | `qualified / total_leads` | Lead quality signal |
| **Cost per Conversion** | `spend / conversions` | Budget efficiency |

---

## 🧰 Tech Stack

- **Python**: pandas, numpy, scipy, scikit‑learn (light), matplotlib, seaborn, plotly
- **SQL**: ad‑hoc analysis via `SQL Tasks.sql`
- **Jupyter Notebooks** for narrative analytics

> Optional extensions: **Power BI / Tableau**, **Streamlit/Dash** for interactive reporting.

---

## ⚙️ Setup & Run

Clone and open in Jupyter:

```bash
git clone https://github.com/vikas-sachan870/Sales-Conversion-Marketing-Funnel-Analysis.git
cd Sales-Conversion-Marketing-Funnel-Analysis
```

Create environment (example with `pip`):

```bash
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt  # or install common libs listed below
```

Minimal packages:
```bash
pip install pandas numpy scipy scikit-learn matplotlib seaborn plotly ipykernel
```

Run in order:
1) `Data Exploration & Cleaning (Python).ipynb`  
2) `Exploratory & Statistical Analysis.ipynb`  
3) `Visualizations.ipynb`  
4) (Optional) Execute `SQL Tasks.sql` in your SQL client.

---

## 🧪 Typical Analyses Included

- **Data Quality**: missing values, outliers, type fixes, feature engineering
- **EDA**: distributions, bivariate analysis, correlation heatmaps
- **Funnel Views**: Awareness → Interest → Consideration → Action
- **Segmentation**: channel, country, age, education, income
- **Stats**: proportion tests, confidence intervals, effect‑size indicators
- **Visuals**: funnel charts, bar/line charts, box plots, cohort views

---

## 🗃️ Example SQL Snippets

```sql
-- Top channels by conversion
SELECT channel, 
       SUM(converted)::float / NULLIF(COUNT(*), 0) AS conversion_rate
FROM marketing
GROUP BY channel
ORDER BY conversion_rate DESC;

-- Stage drop-off by segment
SELECT segment,
       1 - SUM(stage2_flag)::float / NULLIF(SUM(stage1_flag), 0) AS dropoff_s1_to_s2
FROM funnel_events
GROUP BY segment
ORDER BY dropoff_s1_to_s2 DESC;
```

---

## 🖼️ Visual Preview (placeholders)

Add screenshots/gifs from your `Visualizations.ipynb` here:

```
/assets/funnel_overview.png
/assets/segment_uplift.png
/assets/kpi_trend.png
```

```md
![Funnel Overview](/assets/funnel_overview.png)
![Segment Uplift](/assets/segment_uplift.png)
![KPI Trend](/assets/kpi_trend.png)
```

---

## 🔍 Interpreting Results (template)

- **Biggest drop‑off**: _e.g., Interest → Consideration (‑34%)_ → Fix landing page/offer relevance.  
- **Highest converting segment**: _e.g., Email, Income 60–80k, Country = X_.  
- **Primary drivers**: _e.g., Recency of touch, #Interactions, Education_.  
- **Action Plan**: tighten targeting, improve creatives for low‑fit segments, add nurturing for mid‑funnel stalls, experiment with incentives.

> Replace with your actual findings from notebooks.

---

## 📌 Reproducibility

- Notebooks are **ordered** for stepwise execution.
- Use a **seed** for stochastic steps where applicable.
- Keep raw vs cleaned data in **separate folders**.
- Document any **manual transformations** in the cleaning notebook.

---

## 🗺️ Roadmap

- [ ] Add **cohort retention** beyond first conversion
- [ ] Build **Streamlit** mini‑app for interactive slicing
- [ ] Add **A/B test analysis** templates
- [ ] Publish **Power BI** dashboard
- [ ] Parameterize notebooks with **papermill**

---

## 🤝 Contributing

PRs welcome! Please open an issue for significant changes and describe your proposal.

---

## 📜 License

This project is licensed under the **MIT License**. See `LICENSE` for details.

---

## 👤 Author

**Vikas Sachan**  
Feel free to connect or open an issue for feedback and ideas.

---

> ⭐ If this helped, consider starring the repo!
