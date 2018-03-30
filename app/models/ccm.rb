class Ccm < ApplicationRecord
  belongs_to :ca
  belongs_to :user


   validates_presence_of :content,presence:{:message => " can't be blank"}
end
