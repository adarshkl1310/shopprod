class Zza < ApplicationRecord
	    belongs_to :user

    validates_presence_of :shop_name, presence:{:message => "shop_name can't be blank"}
	validates_presence_of :offer, presence:{:message => "offer can't be blank"}
	validates_presence_of :offerdaystart,presence:{:message => "offerdaystart can't be blank"}


def self.search(search)
  if search
    self.where("shop_name like ?", "%#{search}%")
  else
  self.all
  end
end


end
