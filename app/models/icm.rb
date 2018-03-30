class Icm < ApplicationRecord
  belongs_to :ii
  belongs_to :user

     validates_presence_of :content,presence:{:message => " can't be blank"}

end
