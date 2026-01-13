# <h1 align="center"> E-commerce Performance Analysis Report</h1>

> A comprehensive business performance analysis of a global e-commerce retailer, uncovering critical insights across sales trends, product performance, customer loyalty, and regional distribution to drive strategic decision-making.

---

## Table of Contents

- [Executive Summary](#-executive-summary)
- [Client Background](#-client-background)
- [Dataset Structure](#-dataset-structure--erd)
- [Key Insights](#-insights-deep-dive)
  - [Sales Trends](#-sales-trends)
  - [Product Performance](#-product-performance)
  - [Loyalty Program Analysis](#-loyalty-program-learnings)
  - [Refund Rate Analysis](#-refund-rates)
  - [Regional Performance](#-regional-results)
- [Strategic Recommendations](#-recommendations)
- [Conclusions](#-conclusions-and-strategic-recommendations)

---

## 1. Executive Summary

### Project Overview

This project is a **Business Case Simulation** focused on the performance analysis of a global e-commerce company. While the business scenario is fictional, the analysis is conducted using a **real-world dataset**. The company experienced significant growth during the COVID-19 pandemic but faced substantial challenges in 2022, requiring a comprehensive performance review to identify strategic opportunities.

### Key Findings at a Glance

| Metric | Finding | Impact |
|--------|---------|--------|
| **Revenue Decline** | 70-80% drop in Q4 2022 vs. Q4 2021 | Critical demand issues requiring immediate action |
| **Order Frequency** | 38% decrease from 2021 to 2022 | Primary driver of revenue decline |
| **Loyalty Program** | 18% AOV growth for members (2019-2022) | Key retention and revenue stabilization tool |
| **Regional Concentration** | 52% of sales from North America | Geographic dependency risk and opportunity |

### Sales Revenue Analysis (2019–2022)

<div align="center">
  <img width="1000" alt="Sales revenue graph from 2019 to 2022" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1739861326/TechSphere_Sales_Rev_CamilingJS" />
</div>

#### 1. Revenue Growth and Peak Performance

- **2020 was the strongest year**, with sales consistently growing each quarter as a result of the COVID-19 pandemic
- **Q4 2020 saw the highest revenue** ($1.25M in December 2020), making it the best-performing period
- January 2021 ($1.03M) also maintained strong sales, though a downward trend started afterward

#### 2. Declining Trend in 2022

> **Critical Alert**: A sales anomaly and significant decline occurred in 2022, particularly in Q4, with October ($178K), November ($208K), and December ($262K) marking the lowest revenue months.

- The Q3 and Q4 revenue decline suggests a major downturn, likely caused by external market conditions, reduced consumer demand, or internal operational shifts

#### 3. Quarterly Insights & Seasonal Trends

- **Q3 and Q4** of each year typically show strong performance, likely due to seasonal shopping trends and marketing efforts
- **Q1 2022** started well ($704K in January), but revenue quickly dropped, signaling an overall weak performance compared to previous years

#### 4. Key Takeaways

- ✅ Investigate the causes of the 2022 decline (e.g., market changes, competition, internal factors)
- ✅ Leverage high-performing periods (e.g., Q3 and Q4 of strong years) to refine marketing and sales strategies
- ✅ Reassess business strategy for 2023, focusing on pricing, promotions, and customer engagement to regain momentum

---

## 2. Client Background

**This project is a Business Case Simulation focused on the performance analysis of a global e-commerce company. While the business scenario is fictional, the analysis is conducted using a real world dataset.** 

The data represents a US-based e-commerce retailer specializing in consumer electronics and accessories, serving a global customer base. Founded in 2018, the company has experienced rapid growth in recent years, alongside intensifying competition and the operational challenges and opportunities introduced by the COVID-19 pandemic.

### Company Profile

- **Customer Base**: Nearly 88,000 customers
- **Transaction Volume**: Over 108,000 transactions
- **Total Revenue**: More than $28 million
- **Time Period Analyzed**: 2019–2022 (4 years)
- **Geographic Reach**: Global operations with regional distribution

### Analysis Scope

In this scenario, the analysis is conducted on behalf of the **Head of Operations**, with the objective of evaluating company performance over a four-year period (2019–2022). This comprehensive review provides valuable insights that internal cross-functional teams will use to streamline processes and enhance the company's commercial performance.

### Northstar Metrics

The key insights and recommendations focus on the following areas:

1. **Sales Trends** — Focusing on key metrics of sales revenue, number of orders placed, and average order value (AOV)
2. **Product Performance** — Analyzing different product lines, market impact, and refund rates to inform strategic product decisions
3. **Loyalty Program Evaluation** — Evaluating the effectiveness of the company's loyalty program and providing recommendations to maximize customer engagement and retention
4. **Regional Results** — Evaluating regional demand and product performance within regions to identify areas for improvement

---

## 3. Dataset Structure & ERD

The database structure consists of four tables with a total row count of **108,127 records**:

<div align="center">
  <img width="680" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1739423466/TechSphere_ERD_CamilingJS" alt="Entity Relationship Diagram">
</div>

### Database Schema

| Table | Description | Key Fields |
|-------|-------------|-----------|
| **orders** | Transaction-level sales data | order_id, customer_id, product_id, purchase_date, sales_amount |
| **customers** | Customer demographic information | customer_id, loyalty_status, signup_date |
| **geo_lookup** | Geographic mapping data | region_id, country, region_name |
| **order_status** | Order fulfillment tracking | order_id, order_status, refund_flag |

---

## 4. Insights Deep-Dive

## Sales Trends

<table align="center">
  <tr>
    <td width="333">
      <img width="300" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1739895398/Sales_Line_Graph_wnql3v" alt="Sales Revenue Trend">
    </td>
    <td width="333">
      <img width="300" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1739896683/AOV_Line_Graph_CamilingJS" alt="AOV Trend">
    </td>
    <td width="333">
      <img width="300" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1739894907/Num_of_Orders_mfx5ap" alt="Order Count Trend">
    </td>
  </tr>
</table>

### Sales Revenue Analysis

<details>
<summary><b> 1. Sharp Decline in Q4 2022 – A Major Sales Anomaly</b></summary>

- Historically, Q4 (Oct-Dec) has been the strongest quarter due to holiday shopping (Black Friday, Cyber Monday, Christmas sales). However, in 2022, **Q4 sales plummeted**
- December 2022 Sales Revenue was **$262K** (Previous years: $458K–$1.25M). This represents a **~70-80% drop** from Q4 2021 and an even sharper decline compared to Q4 2020

</details>

<details>
<summary><b> 2. Post-Pandemic Sales Normalization (2020-2022 Trends)</b></summary>

- **2020 Sales Surge**: The pandemic led to a significant boost in e-commerce sales, with Q2-Q4 2020 seeing a rapid increase (e.g., **Q4 2020 was nearly double Q4 2019**)
- **2021 Slight Slowdown**: Sales remained high but started stabilizing, showing a decline from peak pandemic levels
- **2022 Major Decline**: A **consistent drop in sales across all quarters** suggests a post-pandemic correction, with inflation, lower consumer spending, or increased competition

</details>

<details>
<summary><b> 3. Declining Growth Throughout 2022 – Indicating Weak Consumer Demand</b></summary>

Each quarter in 2022 experienced a downward trend:
- **Q1**: Started fairly strong ($704K in Jan) but lower than 2021
- **Q2 - Q3**: Dropped further, below $500K per month and continued decline through Q3 with Aug/Sep below $400K
- **Q4**: **Historic low, indicating critical demand issues**. This suggests customer retention, pricing, or product-market fit issues. The company may need to re-strategize through marketing, promotions, or change in pricing

</details>

### Average Order Value (AOV)

<details>
<summary><b> 1. Sharp AOV Surge in 2020, followed by a Decline in 2021-2022</b></summary>

- **2020 saw the highest AOV growth, peaking at $322 (Oct 2020)** compared to $246 (Nov 2019), aligning with pandemic-driven eCommerce boom
- Post-pandemic correction (2021-2022) led to a steady decline, with AOV in 2022 returning close to 2019 levels (~$234-$237)

</details>

<details>
<summary><b> 2. 2022 AOV is Lower and More Volatile</b></summary>

- **2022 AOV fluctuates significantly** between $216 (Oct) and $256 (Sep)
- Q4 2022 AOV is significantly lower than Q4 2020 & 2021, meaning holiday spending per order has dropped

</details>

<details>
<summary><b> 3. Long-Term AOV Decline May Indicate Price Sensitivity</b></summary>

- From a peak of ~$322 in 2020, AOV steadily dropped to ~$234 in 2022 which is **27% drop**
- Over the span of four years, the change in AOV growth has been relatively constant, indicating minimal changes in product pricing
- AOV in 2022 is likely not a major factor in the decline of sales that year

</details>

### Order Count Analysis

Key findings on order frequency:

1. Order counts closely follow sales revenue, indicating that the decline in revenue is primarily due to **fewer orders** rather than a drop in AOV in 2022
2. Total orders **dropped by 38%** from 2021 to 2022
3. The sales anomaly and decline **started in mid-2022**, with orders falling from 2,034 in July to just 825 in October
4. While people are spending slightly less per order, the **decline in order frequency** directly results in lower sales revenue

### Sales Growth vs. AOV Growth

<div align="center">
  <img width="900" alt="Sales Growth vs. AOV Growth" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1741247711/Sales_and_AOV_Growth_MOY_CamilingJS" />
  <p><strong>Sales Growth follows seasonal fluctuations, while AOV remains relatively constant, except for the Sales Growth in October 2022</strong></p>
</div>

---

## Product Performance

<div align="center">
  <h3>Product Sales Surged in 2020 but were not Sustained at High Levels</h3>
  <img width="1000" alt="Product sales graph from 2019 to 2022" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1740121052/Product_Sales_Line_Graph_CamilingJS" />
</div>

### The Best and Worst Performers

**Top Products:**
- ✅ **27-inch 4K Gaming Monitor**: Consistently strong sales year over year totaling **$9,850,744**, highest revenue generating product overall
- ✅ **Apple AirPods Headphones**: Second best-performing product with **$7,739,617 total** sales
- ✅ **MacBook Air Laptop**: Third best with **$6,295,309 total** sales

**Bottom Products:**
- ❌ **Bose SoundSport Headphones**: Extremely low sales (**$3,339.04 total**) compared to other products, with no sales recorded in multiple months
- ❌ **Apple iPhone**: Despite being typically a high-demand product, it is the second lowest sales performer with **$213,327 total** sales

### AOV Over Time by Product

- The AOV peaked in 2020 at **$300.16** and then declined in 2021 ($254.71) and 2022 ($229.91)
- **MacBook Air Laptop** ($1,591), **ThinkPad Laptop** ($1,101), and **Apple iPhone** ($741) are the biggest contributors to AOV
- Samsung Charging Cable Pack and Samsung Webcam have relatively low price points ($20.20 and $50.43 on average). They are stable but do not significantly impact AOV
- AOV is trending downward, but mainly due to a decline of product sales

### Seasonal Heat Map Findings

- **Consistent Q4 spikes**, likely due to Black Friday, Cyber Monday, and the holiday shopping season
- **Biggest Q4 Performer**: The 27-inch 4K Gaming Monitor and Apple AirPods saw the biggest spikes
- Sales tend to dip in **January and February** after the holiday season in Q1
- MacBook Air, ThinkPad, and the 27-inch 4K Gaming Monitor maintain **consistent demand**, as sales through Q2 and Q3 remain relatively stable but lower than in Q4

<table align="center">
  <tr align="center">
    <td width="500">
      <h4>AOV Over Time (2019-2022)</h4>
      <img width="450" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1740156855/AOV_Products_BarGraph_CamilingJS" alt="AOV by Product">
    </td>
    <td width="500">
      <h4>Product Sales Heat Map by Quarter</h4>
      <img width="450" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1740646006/Sales_Heatmap_CamilingJS" alt="Sales Heatmap">
    </td>
  </tr>
</table>

---

## Loyalty Program Learnings

<table align="center">
  <tr align="center">
    <td width="500">
      <h4>Average Order Value by Loyalty Status</h4>
      <img width="450" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1740552359/AOV_by_Loyalty_Status_Camiling" alt="AOV by Loyalty">
    </td>
    <td width="500">
      <h4>Number of Orders by Loyalty Status</h4>
      <img width="450" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1742758110/OrderCount_by_Loyalty_Status_Camiling.png" alt="Orders by Loyalty">
    </td>
  </tr>
</table>

### Key Findings

> **Loyalty Program Success**: Loyalty members have sustained AOV growth beyond the pandemic boom, demonstrating the program's effectiveness as a retention tool.

**Loyalty Members (Success Story):**
- ✅ Sales revenue increased from **$0.4M in 2019** to **$2.7M in 2022**
- ✅ AOV growth rate of **18% from 2019 to 2022**
- ✅ Continued to purchase higher-priced products and place more orders after the pandemic boom, up until August 2022
- ✅ In 2022, loyalty members spent almost **$31 more on average** than non-loyalty members ($245 vs. $214)
- ✅ AOV for loyalty members has steadily increased year over year, climbing **1.1% from 2021**

**Non-Loyalty Members (Concerning Trend):**
- ❌ Sales revenue decreased from **$3.4M in 2019** to **$2.2M in 2022**
- ❌ AOV decline of **8%** during the same period (2019-2022)
- ❌ Non-loyalty members' AOV declined by **18.7% from 2021 to 2022**

**Behavioral Insights:**
- Loyalty members outspend non-loyalty members on **returning orders by nearly $60**
- Non-loyalty members have historically spent more on their **first orders**

---

## Refund Rates

<table align="center">
  <tr>
    <td width="500" valign="top">
      <div align="center">
        <h3>Refund Rate per Product Type</h3>
        <img alt="Refund heat map of products" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1740637891/Refund_Rates_Per_Product_Heatmap_CamilingJS" />
      </div>
    </td>
    <td width="500" valign="top">
      <h3>Key Insights</h3>
      <ul>
        <li><strong>Laptops have the lowest retention rate</strong>, with the highest return rate year over year being the ThinkPad Laptop, followed by the MacBook Air Laptop.</li>
        <li>Coincidentally, these two items have the <strong>highest AOV</strong> and are company's most expensive products.</li>
        <li>The least returned product is the <strong>Bose SoundSport Headphones</strong>, with a return rate of 0%, followed by the Samsung Charging Cable Pack, with an average return rate of 2%.</li>
        <li>However, the Bose SoundSport Headphones are the least frequently purchased product, and the Samsung Charging Cable Pack ranks in the bottom half of purchase orders.</li>
        <li><strong>For 2022, there were no recorded returns for any product.</strong></li>
      </ul>
    </td>
  </tr>
</table>

### Refund Rate Analysis

| Product | Average Refund Rate (2019-2021) | Significance |
|---------|-------------------------------|--------------|
| **ThinkPad Laptop** | 14% | ⚠️ Highest refund rate, high-value product |
| **MacBook Air Laptop** | 14% | ⚠️ Highest refund rate, high-value product |
| **Samsung Charging Cable** | 2% | ✅ Low refund rate |
| **Bose SoundSport** | 0% | ✅ Zero refunds (low volume product) |

---

## Regional Results

<div align="center">
  <img width="1000" alt="Sales by region" src="https://res.cloudinary.com/dxctpvd8v/image/upload/v1743795515/Regional_Barbel_Graph_CamilingJS" />
</div>

### Regional Performance Overview

**North America (Dominant Region):**
- Contributes the **most to sales revenue** for each product
- An average of **52% of total sales** per product
- **$2.7 million in 2022**
- **Samsung Webcam** sees highest sales rate in North America (58% of total sales occur in this region)

**Latin America (Underperforming Region):**
- Company's sales have **significantly underperformed** in this region
- Each product accounts for only an average of **6% of total sales**
- **$256 thousand in 2022**

**Product Highlights Across Regions:**
- **27-Inch 4K Gaming Monitor** is the most popular across products (accounts for **35% of total product sales**)
- **Bose SoundSport Headphones** are the least favored (sales are close to **0% across products**)

---

## 5. Strategic Recommendations

Based on the uncovered insights, here are actionable items that the company can take away from the analysis.

### Sales Recommendations

**Address Seasonal Fluctuations:**
- Remedy sales lows due to seasonal fluctuations in **January and February** by increasing marketing campaigns during these low-sales periods
  - Average sales growth year-over-year for January: **-12%**
  - Average sales growth for February: **-23%**
  - Average Sales Growth for Q4 post-pandemic: **-17%**

**Customer Re-engagement:**
- Win back lost customers after the pandemic boom by implementing marketing or promotional campaigns for returning customers
  - Average year-over-year sales growth post-pandemic: **-28%**
  - Average year-over-year order count growth post-pandemic: **-17%**

### Product Recommendations

**Inventory Optimization:**
- **Optimize inventory** for high-performing products year-round
  - 27-Inch 4K Gaming Monitor: **$10 million** over four years
  - Apple AirPods: **$8 million** over four years

- **Deprioritize inventory** for low-performing products
  - Bose SoundSport Headphones and Apple iPhone constitute for nearly **0%** of total purchase orders

**Strategic Product Investigation:**
- **Investigate sales** for MacBook Air laptops
  - Ranks third in sales revenue (**22%**)
  - Falls in bottom half for number of purchase orders (**3.67%**)

### Loyalty Program Recommendations

**Program Expansion:**
- Continue a **strong push for the loyalty program** to boost and stabilize sales, as loyalty members are more likely to return as customers and purchase high-priced items
  - Loyalty Member AOV grew **18%** from 2019 to 2022
  - Loyalty members spent **$31** more on average than non-loyalty members in 2022

**Targeted Incentives:**
- Offer incentives for loyalty members to target purchases of MacBook Air laptops
  - Loyalty members align with the ideal user persona for MacBook Air laptops, as they purchase high-priced products, are more likely to return as customers, and rarely make returns

### Refund Rate Recommendations

**Quality Control Enhancement:**
- Streamline **product quality control** for high AOV products as they are the most frequently returned products
  - MacBook Air Laptops: Average return rate of **14%** (2019-2021)
  - ThinkPad Laptops: Average return rate of **14%** (2019-2021)

### Regional Recommendations

**Market Share Maximization:**
- **Maximize market share** in North America, as this region dominates sales across all products
  - **52%** of product sales were in the North American region

**Market Diversification:**
- **Diversify the portfolio** in the Latin American region by expanding localized product offerings, sales channels, and market reach to increase sales revenue and purchase orders
  - Only **6%** of product sales were in the Latin American region

---

## 6. Conclusions

This comprehensive analysis of the company's performance from 2019 to 2022 reveals a business that successfully capitalized on the e-commerce surge of the COVID-19 pandemic but is now facing a critical post-pandemic correction. The significant revenue decline in late 2022 was driven primarily by a **38% drop in order frequency** rather than a collapse in order value. This indicates that the primary challenge is **customer retention and demand generation** in an increasingly competitive market.

### Three Strategic Pillars for Recovery

To navigate this transition and return to a growth trajectory in the future, the company must focus on three strategic pillars:

#### 1. Deepening Customer Loyalty

The loyalty program is a proven success, with members contributing **higher AOV** and showing **greater resilience to market fluctuations**. Expanding this program is the most viable path to stabilizing revenue.

**Key Metrics:**
- Loyalty member AOV growth: **+18%** (2019-2022)
- Spending premium: **+$31 per order** vs. non-members
- Retention resilience: Sustained through post-pandemic correction

#### 2. Operational Excellence in High-Value Categories

While Laptops drive significant revenue, their high refund rates (**14%**) represent a major leak in profitability. Addressing quality control or setting better customer expectations for these items is essential.

**Action Items:**
- Implement enhanced QA processes for laptop products
- Improve product descriptions and set clear expectations
- Consider extended warranty or support programs

#### 3. Geographic Optimization

North America remains the bedrock of the business (**52% of sales**). While Latin America offers growth potential, immediate efforts should focus on maximizing market share in the high-performing North American region during seasonal lows (Q1).

**Strategic Focus:**
- Double down on North American market during Q1 weakness
- Develop targeted campaigns for underperforming regions
- Explore localized product offerings for Latin America

### Final Thoughts

By transitioning from a strategy of "riding the pandemic wave" to a **data-driven model**, the company can mitigate the 2022 downturn and build a more sustainable, resilient e-commerce framework for the years ahead. The path forward requires:

- ✅ Aggressive loyalty program expansion
- ✅ Product quality improvements for high-value items
- ✅ Strategic geographic resource allocation
- ✅ Seasonal demand management
- ✅ Customer re-engagement initiatives

The data clearly shows that the foundation for recovery exists—the company must now execute strategically to capitalize on these insights.
