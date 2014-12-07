app.controller 'AppController', ($scope) ->
  $scope.netrunners = [
    { name: "aaron2", gender: 'female'   }
    { name: "aaron", gender: 'female'   }
    { name: "craig", gender: 'male' }
    { name: "wilson", gender: 'male'   }
  ]
  $scope.people = [
    { name: "aaron", gender: 'male'   }
    { name: "sally", gender: 'female' }
    { name: "joe", gender: 'male'   }
  ]

  defaultPerson = { gender: 'female' }
  $scope.newPerson = defaultPerson

  $scope.add = (person) ->
    $scope.people.push _.clone person
    $scope.newPerson = defaultPerson
