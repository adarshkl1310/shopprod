class Profil < ApplicationRecord

	belongs_to :user

  has_attached_file :uphoto, styles: { medium: "300x300>", thumb: "240x87>" },  :default_url => "/assets/images/user.png"

  validates_attachment_content_type :uphoto, content_type: /\Aimage\/.*\z/	



  validates_presence_of :uphoto, presence:{:message => "product_name can't be blank"}
	validates_presence_of :date_of_birth, presence:{:message => "post_type can't be blank"}





end
