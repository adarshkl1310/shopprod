class Jcm < ApplicationRecord
  belongs_to :ja
  belongs_to :user


     validates_presence_of :content,presence:{:message => " can't be blank"}

end
