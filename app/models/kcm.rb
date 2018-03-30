class Kcm < ApplicationRecord
  belongs_to :ka
  belongs_to :user


    validates_presence_of :content,presence:{:message => " can't be blank"}
end
