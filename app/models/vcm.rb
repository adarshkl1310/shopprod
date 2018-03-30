class Vcm < ApplicationRecord
  belongs_to :va
  belongs_to :user


     	
    validates_presence_of :content,presence:{:message => " can't be blank"}
end
