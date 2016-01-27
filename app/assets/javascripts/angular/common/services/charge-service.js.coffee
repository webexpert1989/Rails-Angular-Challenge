angular.module('usqApp').factory "Charge", (Restangular) ->
  new class Charge
    constructor: ->

    get: (id)->
      Restangular.one("charges", id).get()

    all: (params) ->
      Restangular.all("charges").getList(params)

    create: (attrs) ->
      restangular = Restangular.all("charges")
      #return a promise to the post to be handled by controller
      restangular.post(attrs)

    update: (resource) ->
      Restangular.one("charges", resource.id).patch(resource)

    delete: (resource) ->
      Restangular.one('charges', resource.id).remove()
