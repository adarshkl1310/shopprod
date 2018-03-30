class Xcm < ApplicationRecord
  belongs_to :xa
  belongs_to :user

    validates_presence_of :content,presence:{:message => " can't be blank"}

end
