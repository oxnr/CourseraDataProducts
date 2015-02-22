---
title       : Yahoo Finance Stock Forecast
subtitle    : Coursera Data Products Project
author      : Onur Akpolat
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
    
## Introduction
    
This application is using the BATS forecasting model
to forecast the stock price 3 days in future.

Stock price is a typical **Time Series** data. BATS model is exploiting
the complex seasonal patterns in the data with exponential smoothing and
performing the forecast.

### Live Applicaton

The live application is available here:

### [Forecast](https://onur.shinyapps.io/CourseraDataProducts/)

---&twocol w1:60% w2:40%

## Data Source

*** =left
This application is using R's **quantmod** package. Users will select on of the 
predefined stock symbols and the data range as source for the forecast. The application will automatically
download the closing price information from Yahoo finance and provide a chart for visualization.

As with any data prediction, we should have a good data source that could
show us some patterns for the prediction. User can observe in the chart if
there are any seasonal patterns for the forecast.

*** =right
![plot of chunk quantmod](assets/fig/quantmod-1.png) 

---
    
## Interactive Plot with NVD3.js
    
NVD3 has a very interactive line chart with view finder. You can find selective legend,
mouse-over focus to show data points at top chart and the view finder for time range
at the bottom. It is making the application much more appealing.


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    800,
"height":    400,
"x": "Date",
"y": "value",
"group": "variable",
"type": "lineWithFocusChart",
"id": "chart1" 
},
        data = [
 {
 "Date":          16437,
"variable": "ClosingPrice",
"value":          59.24 
},
{
 "Date":          16440,
"variable": "ClosingPrice",
"value":          58.17 
},
{
 "Date":          16441,
"variable": "ClosingPrice",
"value":           57.2 
},
{
 "Date":          16442,
"variable": "ClosingPrice",
"value":          56.93 
},
{
 "Date":          16443,
"variable": "ClosingPrice",
"value":          58.59 
},
{
 "Date":          16444,
"variable": "ClosingPrice",
"value":          58.16 
},
{
 "Date":          16447,
"variable": "ClosingPrice",
"value":          57.73 
},
{
 "Date":          16448,
"variable": "ClosingPrice",
"value":          57.97 
},
{
 "Date":          16449,
"variable": "ClosingPrice",
"value":          57.25 
},
{
 "Date":          16450,
"variable": "ClosingPrice",
"value":          55.11 
},
{
 "Date":          16451,
"variable": "ClosingPrice",
"value":          56.64 
},
{
 "Date":          16455,
"variable": "ClosingPrice",
"value":          57.29 
},
{
 "Date":          16456,
"variable": "ClosingPrice",
"value":          57.71 
},
{
 "Date":          16457,
"variable": "ClosingPrice",
"value":             58 
},
{
 "Date":          16458,
"variable": "ClosingPrice",
"value":          58.62 
},
{
 "Date":          16461,
"variable": "ClosingPrice",
"value":          59.78 
},
{
 "Date":          16462,
"variable": "ClosingPrice",
"value":          57.79 
},
{
 "Date":          16463,
"variable": "ClosingPrice",
"value":          56.35 
},
{
 "Date":          16464,
"variable": "ClosingPrice",
"value":           58.1 
},
{
 "Date":          16465,
"variable": "ClosingPrice",
"value":          56.45 
},
{
 "Date":          16468,
"variable": "ClosingPrice",
"value":          57.28 
},
{
 "Date":          16469,
"variable": "ClosingPrice",
"value":          58.61 
},
{
 "Date":          16470,
"variable": "ClosingPrice",
"value":          58.99 
},
{
 "Date":          16471,
"variable": "ClosingPrice",
"value":          59.26 
},
{
 "Date":          16472,
"variable": "ClosingPrice",
"value":          59.17 
},
{
 "Date":          16475,
"variable": "ClosingPrice",
"value":          57.98 
},
{
 "Date":          16476,
"variable": "ClosingPrice",
"value":          58.79 
},
{
 "Date":          16477,
"variable": "ClosingPrice",
"value":           58.8 
},
{
 "Date":          16478,
"variable": "ClosingPrice",
"value":          61.26 
},
{
 "Date":          16479,
"variable": "ClosingPrice",
"value":          62.85 
},
{
 "Date":          16483,
"variable": "ClosingPrice",
"value":          62.07 
},
{
 "Date":          16484,
"variable": "ClosingPrice",
"value":             63 
},
{
 "Date":          16485,
"variable": "ClosingPrice",
"value":          62.81 
},
{
 "Date":          16486,
"variable": "ClosingPrice",
"value":          63.74 
},
{
 "Date":          16487,
"variable": "ClosingPrice",
"value": null 
},
{
 "Date":          16488,
"variable": "ClosingPrice",
"value": null 
},
{
 "Date":          16489,
"variable": "ClosingPrice",
"value": null 
},
{
 "Date":          16437,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16440,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16441,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16442,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16443,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16444,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16447,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16448,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16449,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16450,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16451,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16455,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16456,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16457,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16458,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16461,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16462,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16463,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16464,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16465,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16468,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16469,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16470,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16471,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16472,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16475,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16476,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16477,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16478,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16479,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16483,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16484,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16485,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16486,
"variable": "ForecastLowB",
"value": null 
},
{
 "Date":          16487,
"variable": "ForecastLowB",
"value":          61.44 
},
{
 "Date":          16488,
"variable": "ForecastLowB",
"value":          61.52 
},
{
 "Date":          16489,
"variable": "ForecastLowB",
"value":          60.94 
},
{
 "Date":          16437,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16440,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16441,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16442,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16443,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16444,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16447,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16448,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16449,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16450,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16451,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16455,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16456,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16457,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16458,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16461,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16462,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16463,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16464,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16465,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16468,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16469,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16470,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16471,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16472,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16475,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16476,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16477,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16478,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16479,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16483,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16484,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16485,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16486,
"variable": "ForecastHighB",
"value": null 
},
{
 "Date":          16487,
"variable": "ForecastHighB",
"value":          65.82 
},
{
 "Date":          16488,
"variable": "ForecastHighB",
"value":          67.36 
},
{
 "Date":          16489,
"variable": "ForecastHighB",
"value":          67.94 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        chart
  .color([ "blue", "orange", "green" ])
  .margin({
 "left":    100 
})
          
        chart.xAxis
  .axisLabel("Date")
  .tickFormat(function(d) {return d3.time.format('%d-%b-%Y')(new Date( d * 86400000 ));})

        chart.x2Axis
  .axisLabel("Date")
  .tickFormat(function(d) {return d3.time.format('%b-%Y')(new Date( d * 86400000 ));})
        
        chart.yAxis
  .axisLabel("Stock Price")
  .tickFormat( function(d) {return '$' + d3.format(',.2f')(d)} )
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

---
    
## BATS model (forecast)
    
BATS is an exponential smoothing state space model with Box-Cox transformation, ARMA errors,
Trend and Seasonal components. We can use this to forecast 3 days in horizon and with 95%
confidence level for prediction levels.


```r
fit <- bats(data.df$ClosingPrice, use.parallel=FALSE)
fcast <- forecast(fit, h=3, level=95)
```
