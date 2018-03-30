class Ocm < ApplicationRecord
  belongs_to :oa
  belongs_to :user



  validates_presence_of :content,presence:{:message => " can't be blank"}
end
