class Hcm < ApplicationRecord
  belongs_to :ha
  belongs_to :user


     validates_presence_of :content,presence:{:message => " can't be blank"}

end
