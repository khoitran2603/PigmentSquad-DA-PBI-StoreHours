**NOTE: This project was part of my contractual work for the business, conducted with the approval and consent of the business owner. Certain information has been removed to protect the business's privacy.**

# Pigment Squad – Store Hours Optimization (Jan–Jul 2025)

### About the Project
This project analyzes sales and operating patterns for Pigment Squad to answer a critical business question:  
**How can we optimize store hours and staffing to maximize profit while minimizing unnecessary cost?**

The analysis uses structured POS transaction data (SQL-based ETL pipelines, Bronze–Silver–Gold layers) with Power BI dashboards for visualization. Unlike the first project (product classification), this report focuses solely on **time-driven performance** to support operational decisions.

---

## Key Insights

### 1. Sales Performance
- $195k sales from 9,000 transactions (avg. $22 each).  
- Peaks in Jan, Apr (~$37k) and Jul (~$29k), driven by school holidays.  

<p align="center">
  <img src="docs/monthly_sales.png" width="40%"/>
  <br />
  <em>Fig. 1: Monthly Sales Trend</em>
</p>

<p align="center">                                                    
  <img src="docs/monthly_sales_summer.png" width="35%"/>
  <br />
  <em>Fig. 1.5: Summer 2025</em>
</p>

<p align="center">
  <img src="docs/monthly_sales_fall.png" width="35%"/>
  <br />
  <em>Fig. 1.5: Fall 2025</em>
</p>

<p align="center">
  <img src="docs/monthly_sales_winter.png" width="35%"/>
  <br />
  <em>Fig. 1.5: Winter 2025</em>
</p>

---

### 2. Day & Hour Patterns
- Saturdays = >2× weekday average; Fridays strong.  
- Peak hour = **2pm (15% of all transactions)**.  
- 1–4pm block drives ~40% of sales.  

<p align="center">
  <img src="docs/weekday_sales.png" width="30%"/>
  <br />
  <em>Fig. 2: Weekday Sales Patterns</em>
</p>

<p align="center">
  <img src="docs/hourly_sales.png" width="75%"/>
  <br />
  <em>Fig. 3: Hourly Sales Patterns</em>
</p>

---

### 3. Product Mix
- Figurines = 70% of sales.  
- Varnish upsell low (~20% transactions) due to slow manual drying.  
- Investing in faster varnish process = opportunity to raise transaction value.  

<p align="center">
  <img src="docs/product_mix.png" width="30%"/>
  <img src="docs/product_mix_2.png" width="30%"/>
  <br />
  <em>Fig. 3: Product Category Share</em>
</p>

---

### 4. Store Hours Efficiency
- Prime window: **12–5pm (esp. Fri–Sun)**.  
- Valuable “edge hours”: Fri–Sat before close, Sat–Sun after open.  
- Low yield: weekday mornings, Mon–Thurs late evenings.  

<p align="center">
  <img src="docs/store_hours_treemap.png" width="25%"/>
  <br />
  <em>Fig. 4: Heatmap of Transactions by Weekday × Hour</em>
</p>

<p align="center">
  <img src="docs/store_hours_open.png" width="25%"/>
  <img src="docs/store_hours_close.png" width="25%"/>
  <br />
  <em>Fig. 5: Heatmap of Transactions by Weekday × Open/Close Hours</em>
</p>

---

## What-If Scenarios

- **Baseline:** 72 hrs/week, Staff cost $79.8k, Outside-hours sales $480.

 <p align="center">
  <img src="docs/operation_hours.png" width="20%"/>
  <br />
  <em>Fig. 5: Store Operation Hour </em>
</p>

- **Scenario 1 (Shorter Hours):** Save $2.7k but lose ~$7.8k sales.  
- **Scenario 2 (Staff Cut, No Hour Change):** Save **$10.5k**, no sales loss ✅.  
- **Scenario 3 (Close Earlier Sun–Thurs):** Save $3.5k, lose ~$1.7k sales.  

<p align="center">
  <img src="docs/scenario_comparison.png" width="70%"/>
  <br />
  <em>Fig. 6: Scenario Comparison – Cost vs Sales Impact</em>
</p>

---

## Recommendation
👉 Adopt **Scenario 2** – staff-hour reduction only.  
- Highest saving ($10.5k, ~$1.5k/month).  
- No revenue loss.  
- Easy to reverse if demand grows.  

---

### Deliverables
- SQL ETL scripts (Bronze → Silver → Gold)  
- Power BI dashboards (Sales Trends, Store Hours Matrix, Scenario Comparison)  
- Business summary (this README)
