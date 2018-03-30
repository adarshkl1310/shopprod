class CasController < ApplicationController


	before_action :find_ca, only: [:show, :edit, :update, :destroy]

def index
    
    @cas = Ca.all.order(created_at: :desc)
    @ca = current_user.cas.build
     @users =  User.where(industry: 'Fashion Accessories & wear').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Fashion Accessories & wear').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

	
end
def create
    @ca = current_user.cas.build(ca_params)
    
    @ca.save
    redirect_to cas_path
end

def show

end

def edit
 	   
end

def update
		
    if  @ca.update(ca_params)
		redirect_to cas_path
	else
		render 'edit'
end
end

def destroy
	
	@ca.destroy
	redirect_to cas_path
end	

private

def ca_params
			
	params.require(:ca).permit(:product_name,:post_type,:market_type,:description)

end

def find_ca
    	 
    @ca = Ca.find(params[:id])
   
end
end
