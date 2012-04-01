class Topic < ActiveRecord::Base
   attr_accessible :name
   
   belongs_to :user
   has_many :microposts
   
   validates :name, presence: true
   validates :user_id, presence: true
end
