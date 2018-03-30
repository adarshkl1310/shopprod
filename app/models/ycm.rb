class Ycm < ApplicationRecord
  belongs_to :ya
  belongs_to :user


      validates_presence_of :content,presence:{:message => " can't be blank"}
end
