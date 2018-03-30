class Mcm < ApplicationRecord
  belongs_to :ma
  belongs_to :user


    validates_presence_of :content,presence:{:message => " can't be blank"}
end
