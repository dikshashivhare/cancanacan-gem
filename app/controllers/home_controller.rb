class HomeController < ApplicationController

	def index
	end

	def role_privilage
	end

	def user_privilage
	end


	def set_user_permissions
		@user = User.find(params[:user_id])
		if params[:action_name] == "view"
			@user.update(access_to_view: params[:access_allowed])
		elsif params[:action_name] == "add"
		    @user.update(access_to_add: params[:access_allowed])
		elsif params[:action_name] == "edit"
			@user.update(access_to_edit: params[:access_allowed])
		elsif params[:action_name] == "delete"
			@user.update(access_to_delete: params[:access_allowed])
		end
        respond_to do |format|
			format.js 
		end 
	end
	
	def set_role_permissions
		@user = User.find(params[:user_id])
		if params[:action_name] == "view"
			@user.update(access_to_view: params[:access_allowed])
		elsif params[:action_name] == "add"
		    @user.update(access_to_add: params[:access_allowed])
		elsif params[:action_name] == "edit"
			@user.update(access_to_edit: params[:access_allowed])
		elsif params[:action_name] == "delete"
			@user.update(access_to_delete: params[:access_allowed])
		end
        respond_to do |format|
			format.js 
		end 
	end
end
