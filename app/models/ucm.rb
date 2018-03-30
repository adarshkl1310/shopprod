class Ucm < ApplicationRecord
  belongs_to :ua
  belongs_to :user

     	
    validates_presence_of :content,presence:{:message => " can't be blank"}
end
