class Prod < ApplicationRecord

	belongs_to :user

  has_attached_file :pphoto, styles: {  :thumb => "100x100#",:medium => "250x250#" },  :default_url => "/assets/images/guest.png"

  validates_attachment_content_type :pphoto, content_type: /\Aimage\/.*\z/

		validates_presence_of :pphoto, presence:{:message => "product_name can't be blank"}
	validates_presence_of :product_name, presence:{:message => "post_type can't be blank"}
	validates_presence_of :product_price,presence:{:message => "description can't be blank"}
    
end
 