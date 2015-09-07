class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments, :dependent => :destroy
	has_many :photos, :dependent => :destroy
	
	geocoded_by :address
	after_validation :geocode, if: ->(obj){obj.address.present? and obj.address_changed?}

	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :address, :presence => true, :uniqueness => true
	validates :description, :presence => true
end
