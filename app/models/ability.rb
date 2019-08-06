# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
  
     
      user ||= User.new # guest user (not logged in)
      # if user.admin?
      #   can :manage, :all
      # elsif user.salesperson?  
      #   can :read, Product
      # elsif user.manager? 
      #   can :create, Product
      #   can :read, Product
      #   can :update, Product
      #   can :destroy, Product
      # end

      if user.access_to_view
        can :read, Product, :user_id 
      elsif
        false
      end

      if user.access_to_add
        can :create, Product , :user_id
      elsif
       false
     end

     if user.access_to_delete
      can :delete, Product , :user_id
     elsif
      false
     end

      if user.access_to_edit
        can :update , Product, :user_id
      elsif
        false
      end


      if user.access_to_view && user.role == "admin"
        can :read, Product, :user_id
      elsif user.access_to_view && user.role == "manager"
        can :read, Product, :user_id
      elsif user.access_to_view && user.role == "salesperson"
        can :read, Product, :user_id
      else
        false
      end

      if user.access_to_add && user.role == "admin"
        can :create, Product, :user_id
      elsif user.access_to_add && user.role == "manager"
        can :create, Product, :user_id
      elsif user.access_to_add && user.role == "salesperson"
        can :create, Product, :user_id
      else
        false
      end

      if user.access_to_delete && user.role == "admin"
        can :destroy, Product, :user_id
      elsif user.access_to_delete && user.role == "manager"
        can :destroy, Product, :user_id
      elsif user.access_to_delete && user.role == "salesperson"
        can :destroy, Product, :user_id
      else
        false
      end

      if user.access_to_edit && user.role == "admin"
        can :update, Product, :user_id
      elsif user.access_to_edit && user.role == "manager"
        can :update, Product, :user_id
      elsif user.access_to_edit && user.role == "salesperson"
        can :update, Product, :user_id
      else
        false
      end
    
    
  end
end
