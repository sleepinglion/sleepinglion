# encoding: utf-8

class Admin::AdminController < ApplicationController
  layout 'admin/application'
  before_filter :authenticate_user!,:only => [:index,:new,:create,:show,:edit, :update, :destroy]
  
  def initialize(*params)
    super(*params)
    
    @script='notices'
  end
end
