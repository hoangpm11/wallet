class PagesController < ApplicationController
   before_filter :authenticate_user!
   include IncomesHelper
  include CostsHelper
  def home
   
  
@chart = LazyHighCharts::HighChart.new('graph') do |f|
  f.title(text: "Your Finance This Year ")
  f.xAxis(categories: ["Jan", "Feb", "Mar", "Apr", "May" , "June", "July","Aug","Sept","Oct","Nov","Dec"])
  f.series(name: "Incomes", yAxis: 0, data: incomes_total )
  f.series(name: "Cost", yAxis: 1, data: costs_total)

  f.yAxis [
    {title: {text: "Incomes", margin: 70} },
    {title: {text: "Costs"}, opposite: true},
  ]

  f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
  f.chart({defaultSeriesType: "column"})
end
end

@chart_globals = LazyHighCharts::HighChartGlobals.new do |f|
  f.global(useUTC: false)
  f.chart(
    backgroundColor: {
      linearGradient: [0, 0, 500, 500],
      stops: [
        [0, "rgb(255, 255, 255)"],
        [1, "rgb(240, 240, 255)"]
      ]
    },
    borderWidth: 2,
    plotBackgroundColor: "rgba(255, 255, 255, .9)",
    plotShadow: true,
    plotBorderWidth: 1
  )
  f.lang(thousandsSep: ",")
  f.colors(["#90ed7d", "#f7a35c", "#8085e9", "#f15c80", "#e4d354"])
end
end





