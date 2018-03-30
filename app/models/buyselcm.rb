class Buyselcm < ApplicationRecord
  belongs_to :buysel
  belongs_to :user

 validates_presence_of :content,presence:{:message => " can't be blank"}
end
