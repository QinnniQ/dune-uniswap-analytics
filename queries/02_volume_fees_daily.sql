
-- Volume & Fees by day
-- Inputs: {{pool_address}}, {{start_date}}, {{end_date}}

/*
Compute daily notional volume and fee revenue. Fee rate depends on pool fee tier.
Annualize Fee APR = (fees_30d / TVL_avg_30d) * (365/30).
*/

-- Example outline:
-- WITH swaps AS (
--   SELECT date_trunc('day', block_time) AS day,
--          SUM(usd_amount) AS volume_usd,
--          SUM(fees_usd)   AS fees_usd
--   FROM uniswap_v3.swaps
--   WHERE pool_address = {{pool_address}}
--     AND block_time BETWEEN {{start_date}} AND {{end_date}}
--   GROUP BY 1
-- )
-- SELECT *
-- FROM swaps
-- ORDER BY day;
