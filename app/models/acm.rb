class Acm < ApplicationRecord
  belongs_to :aa
  belongs_to :user

 validates_presence_of :content,presence:{:message => " can't be blank"}



end
