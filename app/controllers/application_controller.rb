class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout
  before_action :set_locale

  def initialize(*params)
    super(*params)

    @application_name=t(:application_name)
    @controller_name=t(:application_name)
    @title=t(:default_title)

    @meta_robot='all, index, follow'
    @meta_description=t(:meta_description)
    @meta_keywords=t(:meta_keywords)
    @meta_image=t(:meta_image)
    @meta_url=t(:meta_url)

    @page_itemtype="http://schema.org/WebPage"

    @aside_blog_categories = BlogCategory.where(:enable=>true)
    @tags = Blog.tag_counts_on(:tags, :limit => 20, :order => "taggings_count desc")
    #@tags =Tagging.joins(:tag).where('tags.taggings_count>1').group('tags.id')
  #  @aside_blog_categories.each do |blog_category|
  #  if(blog_category
  #  end
  end

  def current_ability
    @current_ability ||= UserAbility.new(current_user)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :notice => t(:login_first)
  end

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale

    @language={t(:korean)=>'ko',t(:english)=>'en',t(:chineses)=>'zh-CN'}
  end

  def layout
    if params[:no_layout]
      return false
    else
      return 'application'
    end
  end
end
