class Character < ActiveRecord::Base
	belongs_to :user, :dependent => :destroy
	attr_accessible :aesthetics, :analysis, :charisma, :user_class, :curiosity, :empathy, :intuition, :proficiency, :willpower, :user_id 
	validates :user_id, presence: true
end
