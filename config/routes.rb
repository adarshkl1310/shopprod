Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "buysels#index"
  
  resources :searches

  resources :buysels do
  resources :buyselcms
  end
  
  resources :buyselcms
  resources :acms
  resources :bcms
  
  resources :aas do
  resources :acms
  end
  resources :bas do
  resources :bcms
  end
  resources :cas do
  resources :ccms
  end
  resources :das do
  resources :dcms
  end
  resources :eas do
  resources :ecms
  end
  resources :fas do
  resources :fcms
  end
  resources :gas do
  resources :gcms
  end
  resources :has do
  resources :hcms
  end
  resources :iis do
  resources :icms
  end
  resources :jas do
  resources :jcms
  end
  resources :kas do
  resources :kcms
  end
  resources :las do
  resources :lcms
  end
  resources :mas do
  resources :mcms
  end
  resources :nas do
  resources :ncms
  end 
  resources :oas do
  resources :ocms
  end
  resources :pas do
  resources :pcms
  end  
  resources :qas do
  resources :qcms
  end
  resources :ras do
  resources :rcms
  end
  resources :sas do
  resources :scms
  end
  resources :tts do
  resources :tcms
  end
  resources :uas do
  resources :ucms
  end
  resources :vas do
  resources :vcms
  end
  resources :was do
  resources :wcms
  end 
  resources :xas do
  resources :xcms
  end
  resources :yas do
  resources :ycms
  end
  resources :zas do
  resources :zcms
  end
  resources :zzas do
  resources :zzcms
  end

  resources :comps do 
  resources :compcms
  end
  resources :groups
  
  resources :profils
  
  resources :prods

  resources :shops do
  resources :shopcms
end

  resources :contants

end
