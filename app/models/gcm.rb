class Gcm < ApplicationRecord
  belongs_to :ga
  belongs_to :user


  validates_presence_of :content,presence:{:message => " can't be blank"}
end
