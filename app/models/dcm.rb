class Dcm < ApplicationRecord
  belongs_to :da
  belongs_to :user


   validates_presence_of :content,presence:{:message => " can't be blank"}
end
