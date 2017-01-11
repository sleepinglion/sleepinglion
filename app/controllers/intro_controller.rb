class IntroController < ApplicationController
  before_action :authenticate_user!, :except => [:index,:show] 

  def initialize(*params)
    super(*params)
        
    @controller_name=t('activerecord.models.intro')
    @script="intro"
    @title=t('activerecord.models.intro')+t(:title_separator)+t(:application_name)    
    @meta_description=t(:meta_description_intro)
    @page_itemtype="http://schema.org/ProfilePage"
    
    get_menu('intro')
  end
  
  # GET /intro
  # GET /intro.json  
  def index
    # @intro=Intro.page(params[:page]).per(15)
    @user=User.where(:admin=>true,:intro=>true).first
    @user_images=UserPhoto.where(:user_id=>@user).page(params[:page]).order('id desc').per(15)
    
    if(params[:id])
      @user_image = UserPhoto.find(params[:id])
    else
      @user_image=@user_images[0]
    end
    
    @script='intro'
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user }
    end
  end
end
