App.factory 'Item', ['$resource', ($resource) ->
  $resource '/api/items/:id', id: '@id'
]
