class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create
    true
  end
end
