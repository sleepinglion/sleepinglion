# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout
  before_action :set_locale
  before_action :set_resources
  before_action :set_ad, only: [:index, :show]
  
  def initialize(*params)
    super(*params)
    
    @application_name=t(:application_name)
    @controller_name=t(:application_name)
    
    @meta_robot='all, index, follow'
    @meta_description=t(:meta_description)
    @meta_keywords=t(:meta_keywords)
    @meta_image=t(:meta_image)
    @meta_url=t(:meta_url)    
               
    @style='application'
    @script='application'
    
    @menu_setting=nil
    
    
    @aside_blog_categories = BlogCategory.where(:enable=>true)
    @tags = Blog.tag_counts_on(:tags)
    
  #  @aside_blog_categories.each do |blog_category|
  #  if(blog_category          
  #  end
  end
  
  def set_resources
    @resources = SettingController.where(:enable=>true).where(:menu_display=>true).order([:priority,:id])
  end
  
  def set_locale
     I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def layout
    if params[:no_layout]
      return false
    else
      return 'application'
    end
  end
  
  protected
  
  def set_ad 
    @ad=true
  end
  
  def get_menu(menu)
    @menu_setting=SettingController.where(:controller=>menu).first
  end
end
