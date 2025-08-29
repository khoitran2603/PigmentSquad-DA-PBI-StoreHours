**NOTE: This project was part of my contractual work for the business, conducted with the approval and consent of the business owner. Certain information has been removed to protect the business's privacy.**

# Pigment Squad – Store Hours Optimisation (Jan–Jul 2025)

### About the Project
This project investigates Pigment Squad’s trading hours and staffing patterns to answer a key operational question:  
**How can the business reduce staff costs without risking meaningful sales loss?**

The work builds on structured POS transaction data processed through the SQL-based ETL pipeline (Bronze → Silver → Gold layers), with insights delivered through Power BI dashboards. 

---

## Key Insights

### 1. Sales Performance
From January to July 2025, the store generated **$195k from 9,000 transactions**, with an average spend of about **$22 per customer**.  
Sales peaked in **January and April (~$37k each)** and again in **July (~$29k)**, closely aligning with **school holidays and public events**.

<p align="center">
  <img src="docs/monthly_sales.png" width="40%"/>
  <br />
  <em>Fig. 1: Monthly Sales Trend</em>
</p>

<p align="center">
  <table>
    <tr>
      <td align="center">
        <img src="docs/monthly_sales_summer.png" width="100%"/><br />
        <em>Fig. 1.5: Summer 2025<br />(School break: 20/12/24-20/01/25)</em>
      </td>
      <td align="center">
        <img src="docs/monthly_sales_fall.png" width="100%"/><br />
        <em>Fig. 1.5: Fall 2025<br />(School break: 05/04/25-21/04/25)</em>
      </td>
      <td align="center">
        <img src="docs/monthly_sales_winter.png" width="100%"/><br />
        <em>Fig. 1.6: Winter 2025<br />(School break: 05/07/25-20/07/25)</em>
      </td>
    </tr>
  </table>
</p>

---

### 2. Day & Hour Patterns
Customer activity is **heavily weekend-driven**.  
- Saturdays deliver more than **double the weekday** and 1.5× higher than Friday or Sunday.  
- Peak demand occurs at **2pm alone (15% of all transactions)**, while the 1–4pm block contributes nearly **40% of sales**.

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
The store’s core business remains **unpainted figurines (70% of transactions)**.  
However, the varnish (Service) upgrade is chosen by only **one in three customers**, largely due to the slow manual process using hand-dryers.  
Investing in faster varnish equipment could raise uptake, improving both customer experience and transaction value.

<p align="center">
  <table>
    <tr>
      <td align="center">
        <img src="docs/product_mix.png" width="100%"/><br />
        <em>Fig. 3: Product Category Share</em>
      </td>
      <td align="center">
        <img src="docs/product_mix_2.png" width="100%"/><br />
        <em>Fig. 3.5: Product Category Share - Service</em>
      </td>
    </tr>
  </table>
</p>

---

### 4. Store Hours Efficiency
Most sales happen in the **prime window of 12–5pm**, especially Fridays and weekends.  

<p align="center">
  <img src="docs/store_hours_treemap.png" width="25%"/>
  <br />
  <em>Fig. 4: Heatmap of Transactions by Weekday × Hour</em>
</p>

“Edge hours” also matter:  
- **Before close (Fri–Sat evenings)** and **after open (Sat–Sun mornings)** show healthy activity.
- In contrast, **weekday mornings** and **late nights Mon–Thurs** are consistently underperforming. These are the safest candidates for cost-saving cuts.

<p align="center">
  <img src="docs/store_hours_open.png" width="40%"/>
  <img src="docs/store_hours_close.png" width="40%"/>
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
1. **Protect Revenue Hours**  
   - Keep core trading hours intact: **12–5pm, weekends, and Fri–Sat evenings.**  
   - Cutting these hours risks meaningful sales loss.  

2. **Trim Low-Value Hours**  
   - Early mornings and Mon–Thurs late evenings consistently underperform.  
   - These are the safest areas to reduce staff coverage or shorten operating hours.  

3. **Leverage Flexible Staffing**  
   - Cap weekly paid staff hours (~62 hrs/week) to unlock ~$10k annual savings.  
   - Use the business owner (or flexible staff shifts) to cover edge hours where sales are minimal but presence is still required.  

4. **Iterate and Monitor**  
   - Trial adjustments for 4–6 weeks.  
   - Use dashboards (heatmaps + scenario tracking) to confirm no significant sales loss.  
   - Adjust staffing mix if demand shifts.
---

### Deliverables
- SQL ETL scripts (Bronze → Silver → Gold)  
- Power BI dashboards (Sales Trends, Store Hours Matrix, Scenario Comparison)  
- Business summary (this README)
