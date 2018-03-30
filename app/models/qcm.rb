class Qcm < ApplicationRecord
  belongs_to :qa
  belongs_to :user


   validates_presence_of :content,presence:{:message => " can't be blank"}

end
