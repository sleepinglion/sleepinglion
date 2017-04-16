class HomeController < ApplicationController
  def initialize(*params)
    super(*params)

    @script="home"
    get_menu('home')
  end

  def index
    @notices = Notice.order('id desc').page(0).per(5)
    @questions = Question.order('id desc').page(0).per(5)
    @galleries = Gallery.order('id desc').page(0).per(24)
    @blogs = Blog.order('id desc').where('photo IS NOT NULL').page(0).per(6)
    @tags= Tag.order('id desc').page(0).per(24)
  end

  def popup
    @meta_description=t(:meta_description_popup)
  end
end
