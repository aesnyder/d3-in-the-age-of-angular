app.controller 'DonutChartCtrl', ($scope) ->
  $scope.$watchCollection 'dataset', (dataset) ->
    $scope.donutData = makeDonut dataset

makeDonut = (dataset) ->
  generateLayout([
    {
      name: 'male'
      count: _.where(dataset, gender: 'male').length
    },
    {
      name: 'female',
      count: _.where(dataset, gender: 'female').length
    }
  ])

generateLayout = d3.layout.pie()
  .value (slice, i) -> slice.count
