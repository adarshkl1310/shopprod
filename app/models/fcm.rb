class Fcm < ApplicationRecord
  belongs_to :fa
  belongs_to :user



  	
    validates_presence_of :content,presence:{:message => " can't be blank"}
end
