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
  	case type
      when 'large'
  			prefix='large_thumb'
  			break
  		when 'medium'
  			prefix='medium_thumb'
  			break
  		when 'small'
  			prefix='small_thumb'
  			break
  		else
  			break
  	end

  	if prefix
  		$pathinfo=pathinfo($url);
  		url=$pathinfo['dirname'].'/'.$prefix.'_'.$pathinfo['basename'];
  	end

  	return url
  end
end
