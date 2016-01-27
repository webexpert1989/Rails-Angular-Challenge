'use strict'

angular.module('usqApp', [
  'restangular'
  'ui.router'
])
.config ($httpProvider) ->
  $httpProvider.defaults.headers.common.Accept = 'application/json'

.config (RestangularProvider) ->
  RestangularProvider.setBaseUrl("/api/v1")

.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise('/')

  $stateProvider
    .state('charges',
      url: '/charges'
      abstract: true
      template: '<ui-view></ui-view>'
    )
    .state('charges.list',
      url: '/list'
      templateUrl: 'assets/angular/partials/charges/index.html'
      controller: 'ChargeListCtrl'
      resolve:
        charges: (Restangular) ->
          Restangular.all("charges").getList()
    )
    .state('charges.show',
      url: '/:id'
      templateUrl: 'assets/angular/partials/charges/show.html'
      resolve:
        charge: (Restangular, $stateParams) ->
          Restangular.one("charges", $stateParams.id).get()
      controller: 'ChargeShowCtrl'
    )