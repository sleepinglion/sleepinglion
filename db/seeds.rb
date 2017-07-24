User.create(:id=>1,:email => 'toughjjh@gmail.com',:nickname=>'정진규',:password => 'jjh123456', :password_confirmation => 'jjh123456',:description=>'탁구가 최고야',:photo=>File.open(Rails.root.join("app", "assets", "images", "intro.jpg")),:admin=>true)

GalleryCategory.create!(:user_id=>1,:title=>'멋진 나')
GalleryCategory.create!(:user_id=>1,:title=>'가족')
GalleryCategory.create!(:user_id=>1,:title=>'탁구')
GalleryCategory.create!(:user_id=>1,:title=>'술자리')

Notice.create!(:id=>1,:user_id=>1,:title=>'예쁘고 귀여운 진규의 집이 개장했습니다.')
NoticeContent.create!(:id=>1,:content=>'그동안 수많은 방문자에 비해서 준비되지 못하였는데 이제 보다 업그레이드된 모습으로 다시 찾아뵙게되었습니다.
    진규와 소통하는 공간으로 계속 많은 이용바랍니다.')

FaqCategory.create!(:id=>1,:user_id=>1,:title=>'진규의 잘생김')
FaqCategory.create!(:id=>2,:user_id=>1,:title=>'진규의 귀여움')
FaqCategory.create!(:id=>3,:user_id=>1,:title=>'최고의 아내')

Faq.create!(:user_id=>1,:faq_category_id=>1,:id=>1,:title=>'진규는 어떻게 이렇게 잘생겼나요?')
Faq.create!(:user_id=>1,:faq_category_id=>1,:id=>2,:title=>'진규는  목이 어떻게 그리 긴가요?')
Faq.create!(:user_id=>1,:faq_category_id=>1,:id=>3,:title=>'키가 약간 아쉽내요?')
Faq.create!(:user_id=>1,:faq_category_id=>2,:id=>4,:title=>'진규의 귀여움을 배우고 싶어요')
Faq.create!(:user_id=>1,:faq_category_id=>2,:id=>5,:title=>'나이를 생각해서 애교를 삼가야 되지 않을까요?')
Faq.create!(:user_id=>1,:faq_category_id=>3,:id=>6,:title=>'진규는 어떻게 상금이 같은 아내를 얻었나요?')
Faq.create!(:user_id=>1,:faq_category_id=>3,:id=>7,:title=>'처가집 처가집 말뚝보고 매일 절하고 있나요?')

FaqContent.create!(:id=>1,:content=>'원래 태어날때부터 잘생겼습니다.')
FaqContent.create!(:id=>2,:content=>'사슴처럼 긴목 또한 태어날때부터 길었습니다.')
FaqContent.create!(:id=>3,:content=>'대신 빵빵한  배로 커버하고 있습니다.')
FaqContent.create!(:id=>4,:content=>'진규의 귀여움은 타고난것으로 쉽게 따라할수 없습니다.')
FaqContent.create!(:id=>5,:content=>'나이는 숫자일뿐, 진규의 귀여움은  계속 됩니다.')
FaqContent.create!(:id=>6,:content=>'그러게요 이건 정말 기적입니다.')
FaqContent.create!(:id=>7,:content=>'그러게요 그래도 모자를 판에 배째고 다니네요?')

BlogCategory.create(:id=>1,:user_id=>1,:title=>'환경')
BlogCategory.create(:id=>2,:user_id=>1,:title=>'탁구')

History.create!(:user_id=>1,:year=>'1953년',:title=>'진규 태어나다',:content=>'응애 응애')
History.create!(:user_id=>1,:year=>'1981년',:title=>'결혼',:content=>'내가 어떻게 상금이와 결혼했을까?')
History.create!(:user_id=>1,:year=>'1981년',:title=>'최고의 보물 종호를 얻다',:content=>'나의 모든것 종호가 태어남')
History.create!(:user_id=>1,:year=>'2013년',:title=>'2의 인생 시작',:content=>'제 2의 인생 시작중임')
