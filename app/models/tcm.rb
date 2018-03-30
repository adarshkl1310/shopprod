class Tcm < ApplicationRecord
  belongs_to :tt
  belongs_to :user


     validates_presence_of :content,presence:{:message => " can't be blank"}
end
