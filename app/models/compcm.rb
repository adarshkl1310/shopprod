class Compcm < ApplicationRecord
  belongs_to :comp 
  belongs_to :user


  validates_presence_of :content,presence:{:message => " can't be blank"}
end
