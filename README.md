# R Mean Calculation Bug

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector. The function correctly handles empty vectors but fails to properly manage vectors containing `NA` values. The `sum()` function in R treats `NA` values in a specific way that can lead to unexpected behavior when calculating the mean. The solution shows how to handle `NA` values correctly using `na.rm = TRUE` in the `mean()` function or `sum()` function.

## Bug Description
The provided R code calculates the mean of a numeric vector. While it correctly identifies and handles empty vectors by returning `NA`, it does not properly address vectors containing missing values (`NA`).  When `NA` values are present, the `sum()` function returns `NA`, resulting in an incorrect calculation of the mean.

## Solution
The solution uses the `na.rm = TRUE` argument within the `mean()` function which explicitly removes `NA` values before the calculation. This ensures the mean is calculated only from the available numeric values in the vector, providing an accurate result.