class Bcm < ApplicationRecord
  belongs_to :ba
  belongs_to :user


  
 validates_presence_of :content,presence:{:message => " can't be blank"}
end
