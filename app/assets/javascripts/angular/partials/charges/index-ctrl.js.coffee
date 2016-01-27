angular.module('usqApp').controller "ChargeListCtrl", ($scope, Charge, charges) ->
  $scope.charges = charges