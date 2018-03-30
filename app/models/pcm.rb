class Pcm < ApplicationRecord
  belongs_to :pa
  belongs_to :user


    	
    validates_presence_of :content,presence:{:message => " can't be blank"}
end
