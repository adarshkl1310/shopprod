class GasController < ApplicationController

before_action :find_ga, only: [:show, :edit, :update, :destroy]

	def index
	@ga = current_user.gas.build
	@gas = Ga.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Computer & Telecommunication').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
@users =  User.where(industry: 'Computer & Telecommunication').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
	
end

def create
		@ga = current_user.gas.build(ga_params)
    @ga.save
    redirect_to gas_path
end

def show

    

	end
 def edit
 
 end
 	def update
		
		if @ga.update(ga_params)
			redirect_to gas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ga.destroy
		redirect_to gas_path
	end

private

def ga_params
			
		params.require(:ga).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ga
    	 
    	@ga = Ga.find(params[:id])
   
    end
end
