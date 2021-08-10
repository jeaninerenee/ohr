module ApplicationHelper

	def resource_name
		:devise_user
	end

	def resource
		@resource ||= DeviseUser.new
	end

	def resource_class
		User
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:devise_user]
	end

end
