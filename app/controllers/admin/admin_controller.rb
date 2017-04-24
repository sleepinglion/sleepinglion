class Admin::AdminController < ApplicationController
  layout 'admin/application'
  before_action :authenticate_user!,:only => [:index,:new,:create,:show,:edit, :update, :destroy]

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_admin_session_path, :alert => exception.message
  end
end
