Developing Data Products Course Project Presentation
========================================================
author: Shibashis Mukherjee
date: 12/25/2016
autosize: true

About the Diamond Price Analysis App
========================================================

This is a shiny web app built using the "diamonds"" data set available with the ggplot package. It is a simple application that allows the user to choose one of the three properties of diamonds - Clarity, Color or Cut. The application then displays a plot of diamond prices by that property.

The diamonds data set contains prices for 53940 diamonds and 10 other variables. The price in US dollars and is between (\$326–\$18,823). For this app, we restrict the price $7500. 

The weight of the diamonds varies between 0.2–5.01 carats. The quality of the cut is categorizes as Fair, Good, Very Good, Premium, Ideal. The color of the diamonds are  from J (worst) to D (best). The clarity shows how clear the diamond is (I1 (worst), SI1, SI2, VS1, VS2, VVS1, VVS2, IF (best)).

Price Analysis R Code and Plot
========================================================

```r
library(ggplot2)
ggplot(diamonds, aes(factor(clarity), (price), fill=clarity)) + geom_boxplot() + ggtitle("Diamond Price by Clarity") + xlab("Clarity") + ylab("Diamond Price in US $") + coord_cartesian(ylim=c(0,7500))
```

![plot of chunk unnamed-chunk-1](DiamondPriceAnalysisApp-figure/unnamed-chunk-1-1.png)

Price Analysis Inferences
========================================================
From this analysis we see that there are all kinds of prices for all different cuts. People seem to pay more or less based on clarity and pay more for shinier diamonds. As for color, price per carat seems to be highest for color G. 

This simple application can help people decide whether the price they are paying is in line with what others pay for similar chracterisitics.


The Price Analysis Application
========================================================
![Diamond Price Analysis App](DPAnalysis.png)
repo: https://github.com/shibashismukherjee/ddp.git

App: https://shibashis-mukherjee.shinyapps.io/DiamondPrices/
