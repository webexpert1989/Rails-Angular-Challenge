class ChargePolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      if user.role == true
        scope.all
      else
        scope.where(user_id: @user_id)
      end
    end
  end
end