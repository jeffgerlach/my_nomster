require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "valid comment is created" do
    user = FactoryGirl.create(:user)
   	sign_in user

   	Geocoder.configure(:lookup => :test)
   	Geocoder::Lookup::Test.set_default_stub([{}]) #prevents geocoder call
   	place = FactoryGirl.create(:place)

   	assert_difference 'Comment.count' do
   		post :create, :place_id => place.id, :comment => {
   			:message => 'testing a comment',
   			:rating => '3_stars'}
   	end
   	assert_redirected_to place_path(place)
   	assert_equal 1, place.comments.count
  end
end
