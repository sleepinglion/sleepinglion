User.create!(:email => 'toughjjh@gmail.com', :nickname=>'잠자는-사자', :password => '123456', :password_confirmation => '123456',:admin=>true)

=begin 
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

=end