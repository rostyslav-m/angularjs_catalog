
App.controller 'ItemsCtrl', ['$scope', 'Item', ($scope, Item) ->
  # Attributes accessible on the view
  $scope.selectedItem = null
  $scope.selectedRow        = null

  # Gather the Items and set the selected one to the first on success
  $scope.items = Item.query ->
    $scope.selectedItem = $scope.items[0]
    $scope.selectedRow = 0

  # Set the selected Item to the one which was clicked
  $scope.showItem = (item, row) ->
    $scope.selectedItem = item
    $scope.selectedRow = row
]
