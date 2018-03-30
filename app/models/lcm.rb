class Lcm < ApplicationRecord
  belongs_to :la
  belongs_to :user

    validates_presence_of :content,presence:{:message => " can't be blank"}
end
