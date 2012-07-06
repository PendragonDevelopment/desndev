class Character < ActiveRecord::Base
	belongs_to :user, :dependent => :destroy
	attr_accessible :aesthetics, :analysis, :charisma, :user_class, :curiosity, :empathy, :intuition, :proficiency, :willpower, :user_id 
	validates :user_id, presence: true
end

# == Schema Information
#
# Table name: characters
#
#  id          :integer         not null, primary key
#  aesthetics  :integer
#  analysis    :integer
#  charisma    :integer
#  curiosity   :integer
#  empathy     :integer
#  intuition   :integer
#  willpower   :integer
#  proficiency :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  user_id     :integer
#  user_class  :string(255)
#

