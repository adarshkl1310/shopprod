class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :buysels
    has_many :aas
    has_many :bas 
    has_many :cas
    has_many :das
    has_many :eas    	
    has_many :fas 
    has_many :gas
    has_many :has
    has_many :iis
    has_many :jas 
    has_many :kas
    has_many :las
    has_many :mas    	
    has_many :nas 
    has_many :oas
    has_many :pas
    has_many :qas
    has_many :ras 
    has_many :sas
    has_many :tts
    has_many :uas    	
    has_many :vas 
    has_many :was
    has_many :xas
    has_many :yas
    has_many :zas 
    has_many :zzas
    has_many :buyselcms
    has_many :acms
    has_many :bcms
    has_many :ccms
    has_many :dcms
    has_many :ecms
    has_many :fcms
    has_many :gcms
    has_many :hcms
    has_many :icms
    has_many :jcms
    has_many :kcms
    has_many :lcms
    has_many :mcms
    has_many :ncms
    has_many :ocms
    has_many :pcms
    has_many :qcms
    has_many :rcms
    has_many :scms
    has_many :tcms
    has_many :ucms
    has_many :vcms
    has_many :wcms
    has_many :xcms
    has_many :ycms
    has_many :zcms
    has_many :zzcms
    has_many :profils
    has_many :comps
    has_many :compcms
    has_many :prods
    has_many :shops   
    has_many :shopcms 
    has_many :contants  

        validates_presence_of :username, presence:{:message => "Name can't be blank"}
    validates_presence_of :contry,presence:{:message => "Country Name can't be blank"}
            validates_presence_of :business_type, presence:{:message => "Business type can't be blank"}
    validates_presence_of :city,presence:{:message => "Gender can't be blank"}
            validates_presence_of :industry, presence:{:message => "Industry can't be blank"}
     validates_numericality_of :mobile_number,presence:{:message => "Mob Num can't be blank"}
   

def self.search(search)
  if search
    self.where("username like ?", "%#{search}%")
  else
  self.all
  end
end

  end