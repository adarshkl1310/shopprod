class Ncm < ApplicationRecord
  belongs_to :na
  belongs_to :user

    validates_presence_of :content,presence:{:message => " can't be blank"}
end
