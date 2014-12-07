app.directive 'chartDonut', ($window) ->
  restrict: 'EA'
  scope:
    dataset: '='
  templateUrl: 'templates/donut-chart.html'
  controller: 'DonutChartCtrl'

  link: (scope, el) ->

    # if you want a fluid width/height
    # set to width 100%, then listen to window resize
    # and set height to el.find('svg').width()
    # and radius to half that...

    scope.graph =
      radius: 50

    scope.arc = arc(scope.graph.radius)

arc = (radius) ->
  d3.svg.arc().innerRadius(radius - radius / 5).outerRadius(radius)
