# Dune Analytics Case Study — Uniswap V3 WETH/USDC Pool

**Status:** [View Live Dashboard on Dune](https://dune.com/qinnniq/dashone)  
**Date range analyzed:** Last 90 days  
**Data source:** `dex.trades` table (Ethereum mainnet)

---

## 1. Objective
To analyze the trading activity and fee generation dynamics of the **Uniswap V3 WETH/USDC 0.05% pool** using on-chain data from Dune Analytics.

The dashboard provides clear visibility into **daily trading volume**, **estimated fees**, and **rolling fee trends** over 7- and 30-day windows.

---

## 2. Methodology
- **Data Source:** `dex.trades` (Dune Spellbook)  
- **Filter:** `project = 'uniswap'`, `version = '3'`, `blockchain = 'ethereum'`  
- **Pool Address:** `0x88e6A0c2dDD26FeEeb64F039a2c41296FcB3f5640`
- **Fee Estimation:** `fees = volume_usd * 0.0005` (0.05% fee tier)
- **Aggregation:** Daily totals with rolling 7-day and 30-day window functions for trend tracking

---

## 3. Key Insights
| Metric | Insight |
|--------|----------|
| **Average Daily Volume** | ~\$90M USD |
| **Peak Volume Day** | ~\$160M USD around Oct 7th |
| **30-Day Fee Estimate** | ~\$450K USD |
| **Rolling 7d vs 30d Fees** | Short-term spikes show strong correlation with volatility events |
| **Top Fee Day** | \$81K USD in estimated fees on Oct 14th |

---

## 4. Visuals (Dashboard Tiles)
1. **Daily Volume & Fee Estimates** – Tracks day-by-day market activity.  
2. **Rolling Fees (7d & 30d)** – Smooths short-term volatility to reveal trend strength.  
3. **Top 10 Fee Days Table** – Identifies highest revenue periods for LPs.

---

## 5. Observations
- Fee generation aligns closely with ETH price swings and overall DeFi activity.  
- The WETH/USDC pool remains one of the most liquid and consistently active markets on Uniswap.  
- Liquidity providers at this tier benefit from steady volume and minimal depeg risk.  

---

## 6. Next Steps
- Integrate **TVL and Fee APR** metrics from `uniswap_v3.pool_day_data` to evaluate yield performance.  
- Compare multiple fee tiers (0.05%, 0.3%, 1%) for WETH/USDC.  
- Extend to Layer-2 deployments (Arbitrum, Optimism) to contrast gas-adjusted performance.

---

## 7. Takeaway
This project demonstrates end-to-end blockchain analytics using **Dune SQL** — from querying raw on-chain data to building reproducible visuals and publishing insights in a public dashboard.

It highlights an ability to **analyze decentralized market data**, **build interactive dashboards**, and **translate on-chain metrics into actionable insights**.

---

**Author:** [@qinnniq](https://dune.com/qinnniq)  
**Tools:** Dune SQL • Ethereum • Uniswap V3 • GitHub • Markdown  
