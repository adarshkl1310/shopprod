class Scm < ApplicationRecord
  belongs_to :sa
  belongs_to :user

   validates_presence_of :content,presence:{:message => " can't be blank"}

end
