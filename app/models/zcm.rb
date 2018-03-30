class Zcm < ApplicationRecord
  belongs_to :za
  belongs_to :user


    validates_presence_of :content,presence:{:message => " can't be blank"}
end
