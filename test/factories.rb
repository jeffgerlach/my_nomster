FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"yoloman#{n}@gmail.com"
		end
		password "omglolhahahah"
		password_confirmation "omglolhahahah"
	end

	factory :place do
		name "The best place"
		description "Has the best food!"
		address "1234 Awesome Street"
		latitude (42.42)
		longitude (42.42)
		association :user
	end
end