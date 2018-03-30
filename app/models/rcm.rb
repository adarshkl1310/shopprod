class Rcm < ApplicationRecord
  belongs_to :ra
  belongs_to :user

    validates_presence_of :content,presence:{:message => " can't be blank"}
end
