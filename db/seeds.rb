Group.create!(:title=>'admin')
Group.create!(:title=>'manage')
Group.create!(:title=>'user')
Group.create!(:title=>'viewer')

User.create!(:group_id=>1,:email => 'toughjjh@gmail.com', :nickname=>'잠자는-사자', :password => 'jjh123456', :password_confirmation => 'jjh123456',:admin=>true)

BlogCategory.create!(:id=>1,:user_id=>1,:blog_category_id=>nil,:title=>'잡생각',:blogs_count=>16,:blog_categories_count=>0,:leaf=>0,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>2,:user_id=>1,:blog_category_id=>nil,:title=>'리눅스',:blogs_count=>0,:blog_categories_count=>4,:leaf=>0,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>3,:user_id=>1,:blog_category_id=>nil,:title=>'웹개발',:blogs_count=>0,:blog_categories_count=>6,:leaf=>0,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>4,:user_id=>1,:blog_category_id=>2,:title=>'설치',:blogs_count=>2,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>5,:user_id=>1,:blog_category_id=>2,:title=>'응용프로그램',:blogs_count=>6,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>6,:user_id=>1,:blog_category_id=>2,:title=>'기본명령어',:blogs_count=>0,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>7,:user_id=>1,:blog_category_id=>2,:title=>'서버',:blogs_count=>0,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>8,:user_id=>1,:blog_category_id=>3,:title=>'html',:blogs_count=>3,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>9,:user_id=>1,:blog_category_id=>3,:title=>'CSS',:blogs_count=>1,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>10,:user_id=>1,:blog_category_id=>3,:title=>'javascript',:blogs_count=>2,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:41',:updated_at=>'2013-12-24 18:26:41')
BlogCategory.create!(:id=>11,:user_id=>1,:blog_category_id=>3,:title=>'Ruby On Rails',:blogs_count=>5,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2014-04-14 00:00:00',:updated_at=>'2014-04-14 00:00:00')
BlogCategory.create!(:id=>12,:user_id=>1,:blog_category_id=>3,:title=>'CakePHP',:blogs_count=>3,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2014-05-18 00:00:00',:updated_at=>'2014-05-18 00:00:00')
BlogCategory.create!(:id=>13,:user_id=>1,:blog_category_id=>3,:title=>'웹개발 Tip(삽질방지)',:blogs_count=>9,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2014-05-24 00:00:00',:updated_at=>'2014-05-24 00:00:00')
BlogCategory.create!(:id=>14,:user_id=>1,:blog_category_id=>nil,:title=>'헬조선',:blogs_count=>15,:blog_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2016-01-10 15:31:45',:updated_at=>'2016-01-10 15:31:45')

GalleryCategory.create!(:id=>1,:user_id=>1,:gallery_category_id=>nil,:title=>'일상',:galleries_count=>2,:gallery_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:42',:updated_at=>'2013-12-24 18:26:42')
GalleryCategory.create!(:id=>2,:user_id=>1,:gallery_category_id=>nil,:title=>'멍멍이',:galleries_count=>12,:gallery_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:42',:updated_at=>'2013-12-24 18:26:42')
GalleryCategory.create!(:id=>3,:user_id=>1,:gallery_category_id=>nil,:title=>'가족들',:galleries_count=>19,:gallery_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:42',:updated_at=>'2013-12-24 18:26:42')
GalleryCategory.create!(:id=>4,:user_id=>1,:gallery_category_id=>nil,:title=>'풍경',:galleries_count=>20,:gallery_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:42',:updated_at=>'2013-12-24 18:26:42')
GalleryCategory.create!(:id=>5,:user_id=>1,:gallery_category_id=>nil,:title=>'기타',:galleries_count=>1,:gallery_categories_count=>0,:leaf=>1,:enable=>1,:created_at=>'2013-12-24 18:26:42',:updated_at=>'2013-12-24 18:26:42')


ProgramLanguage.create!(:id=>1,:title=>'ruby',:link=>'http://www.php.net/',:enable=>1)
ProgramLanguage.create!(:id=>2,:title=>'PHP',:link=>'https://www.ruby-lang.org/',:enable=>1)
ProgramLanguage.create!(:id=>3,:title=>'CSS',:link=>nil,:enable=>1)
ProgramLanguage.create!(:id=>4,:title=>'javascript',:link=>nil,:enable=>1)
ProgramLanguage.create!(:id=>5,:title=>'java',:link=>'https://www.java.com/',:enable=>1)
ProgramLanguage.create!(:id=>6,:title=>'python',:link=>'https://www.python.org/',:enable=>1)

ProgramCategory.create!(:id=>1,:program_language_id=>1,:title=>'Ruby on Rails',:link=>'http://rubyonrails.org/',:enable=>1)
ProgramCategory.create!(:id=>2,:program_language_id=>2,:title=>'Pure PHP',:link=>nil,:enable=>1)
ProgramCategory.create!(:id=>3,:program_language_id=>2,:title=>'Wordpress',:link=>'https://wordpress.org/',:enable=>1)
ProgramCategory.create!(:id=>4,:program_language_id=>2,:title=>'Mediawiki',:link=>'https://www.mediawiki.org/wiki/MediaWiki',:enable=>1)
ProgramCategory.create!(:id=>5,:program_language_id=>2,:title=>'Codeigniter',:link=>'https://codeigniter.com/',:enable=>1)
ProgramCategory.create!(:id=>6,:program_language_id=>2,:title=>'CakePHP',:link=>'https://cakephp.org/',:enable=>1)
ProgramCategory.create!(:id=>7,:program_language_id=>3,:title=>'Boostrap',:link=>'http://getbootstrap.com/',:enable=>1)
ProgramCategory.create!(:id=>8,:program_language_id=>4,:title=>'Jquery',:link=>'https://jquery.com/',:enable=>1)

Program.create!(:id=>1,:title=>'잠자는사자의 집',:description=>'',:service_link=>'http://www.sleepinglion.pe.kr',:use_database=>true,:enable=>true)
Program.create!(:id=>2,:title=>'안티 살인은행',:description=>'',:service_link=>'http://www.antikb.site',:use_database=>true,:enable=>true)
Program.create!(:id=>3,:title=>'SL FTP',:description=>'',:service_link=>'http://www.sl-ftp.site',:use_database=>false,:enable=>true)
Program.create!(:id=>4,:title=>'모바일웹 플랫폼',:description=>'',:use_database=>true,:enable=>true)
Program.create!(:id=>5,:title=>'관련링크관리 플러그인',:description=>'',:service_link=>'https://www.mediawiki.org/wiki/Extension:RelatedLinks',:use_database=>true,:enable=>true)
Program.create!(:id=>6,:title=>'로고관리 플러그인',:description=>'',:service_link=>'https://www.mediawiki.org/wiki/Extension:UploadLogo',:use_database=>false,:enable=>true)

ProgramLink.create!(:program_id=>1,:title=>'잠자는사자의 집(ROR)',:download_link=>'')
ProgramLink.create!(:program_id=>1,:title=>'잠자는사지의 집(codeigniter)',:download_link=>'')
ProgramLink.create!(:program_id=>2,:title=>'안티 살인은행',:download_link=>'')
ProgramLink.create!(:program_id=>3,:title=>'SL FTP',:download_link=>'')
ProgramLink.create!(:program_id=>4,:title=>'모바일웹 플랫폼(ROR)',:download_link=>'')
ProgramLink.create!(:program_id=>4,:title=>'모바일웹 플랫폼(codeigniter)',:download_link=>'')
ProgramLink.create!(:program_id=>5,:title=>'관련링크관리 플러그인',:download_link=>'')
ProgramLink.create!(:program_id=>6,:title=>'로고관리 플러그인',:download_link=>'')


ProgramCategoriesProgram.create!(:program_category_id=>1,:program_id=>1,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>7,:program_id=>1)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>1)
ProgramCategoriesProgram.create!(:program_category_id=>1,:program_id=>2,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>7,:program_id=>2)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>2)
ProgramCategoriesProgram.create!(:program_category_id=>1,:program_id=>3,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>7,:program_id=>3)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>3)
ProgramCategoriesProgram.create!(:program_category_id=>1,:program_id=>4,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>7,:program_id=>4)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>4)
ProgramCategoriesProgram.create!(:program_category_id=>4,:program_id=>5,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>5)
ProgramCategoriesProgram.create!(:program_category_id=>4,:program_id=>6,:main=>1)
ProgramCategoriesProgram.create!(:program_category_id=>8,:program_id=>6)
