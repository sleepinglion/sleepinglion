xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title @application_name
    xml.author 'Sleeping-Lion'
    xml.description @meta_description
    xml.link 'http://www.sleepinglion.pe.kr'
    xml.language I18n.locale.to_s

    for article in @blogs
      xml.item do
        if article.title
          xml.title article.title
        else
          xml.title ''
        end
        xml.author 'SleepingLion'
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link 'http://www.sleepinglion.pe.kr/blog/' + article.id.to_s
        xml.guid article.id

        text = article.blog_content.content
		# if you like, do something with your content text here e.g. insert image tags.
		# Optional. I'm doing this on my website.
        if article.photo?
            image_url = article.photo.large_thumb.to_s
            image_caption = article.title
            image_align = ""
            image_tag = "
                <p><img src='" + image_url +  "' alt='" + image_caption + "' title='" + image_caption + "' align='" + image_align  + "' /></p>
              "
            text = text.sub('{image}', image_tag)
        end
        xml.description "<p>" + text + "</p>"

      end
    end
  end
end
