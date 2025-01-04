module Main where


calculateRewards :: Double -> Double -> Double -> Double
calculateRewards adaStaked poolPerformance epochRate =
    adaStaked * poolPerformance * epochRate

main :: IO ()
main = do
    putStrLn "Welcome to the Staking Rewards Calculator!"

    --Input for ADA staked
    putStr "Enter the amount of ADA you have staked: "
    adaInput <- getLine
    let adaStaked = read adaInput :: Double

    --Input for pool performance
    putStr "Enter the pool performance factor (0 to 1): "
    poolInput <- getLine
    let poolPerformance = read poolInput :: Double

    --Input for epoch rewards rate
    putStr "Enter the epoch rewards rate (e.g., 0.003 for 0.3%): "
    rateInput <- getLine
    let epochRate = read rateInput :: Double

    --Calculate rewards
    let rewards = calculateRewards adaStaked poolPerformance epochRate

    --Display the result
    putStrLn $ "Your estimated rewards per epoch are: " ++ show rewards ++ " ADA"
