
-- Pool overview (parameterized)
-- Replace with your pool address and fee tier.
-- Example focus: Uniswap v3 WETH/USDC on Ethereum mainnet.

/*
Goal: Basic pool metadata + current price proxy + fee tier.
Use Dune Spellbook uniswap_v3.* and prices.* tables as available in your Dune environment.
*/

-- SELECT * FROM uniswap_v3.pools WHERE pool_address = {{pool_address}};
-- SELECT * FROM uniswap_v3.pool_metadata WHERE pool_address = {{pool_address}};
-- SELECT * FROM prices.usd WHERE token = {{token0}} OR token = {{token1}} LIMIT 100;
