class Ecm < ApplicationRecord
  belongs_to :ea
  belongs_to :user

   validates_presence_of :content,presence:{:message => " can't be blank"}
end
