class XasController < ApplicationController

before_action :find_xa, only: [:show, :edit, :update, :destroy]

def index
	@xa = current_user.xas.build
	@xas = Xa.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Furniture & Furnishings').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	 @users =  User.where(industry: 'Furniture & Furnishings').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@xa = current_user.xas.build(xa_params)
    @xa.save
    redirect_to xas_path
end

def show

    end
 def edit
 	
 end
 	def update
		
		if @xa.update(params[:xa].permit(:product_name,:post_type,:description))
			redirect_to xas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@xa.destroy
		redirect_to xas_path 
	end


private

def xa_params
			
		params.require(:xa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_xa
    	 
    	@xa = Xa.find(params[:id])
   
    end
end
