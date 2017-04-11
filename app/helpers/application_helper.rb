# encoding: utf-8

module ApplicationHelper
  def link_to_home
    link_to('홈',root_path,:title=>'홈으로')
  end

  def manage_width(model)
    if can?(:delete, model) && can?(:update, model)
      return 'style="width:150px;"'
    else
      return 'style="width:90px"'
    end
  end

  def sl_get_thumb(url,type='origin')
    require 'uri'

  	case type
      when 'large'
  			prefix='large_thumb'
  		when 'medium'
  			prefix='medium_thumb'
  		when 'small'
  			prefix='small_thumb'
  	end

    uri = URI.parse(url)
  	if prefix
  		url="#{uri.scheme}://#{uri.host}"+File.dirname(uri.path)+'/'+prefix+'_'+File.basename(url)
  	end

  	return url
  end
end
