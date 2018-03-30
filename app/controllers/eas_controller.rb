class EasController < ApplicationController

before_action :find_ea, only: [:show, :edit, :update, :destroy]

	def index
	@ea = current_user.eas.build
	@eas = Ea.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Sports & Fitness').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
@users =  User.where(industry: 'Sports & Fitness').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
	
end

def create
		@ea = current_user.eas.build(ea_params)
    @ea.save
    redirect_to eas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @ea.update(ea_params)
			redirect_to eas_path
		else
			render 'edit'
		end
	end

	def destroy
	
		@ea.destroy
		redirect_to eas_path
	end

private

def ea_params
			
		params.require(:ea).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ea
    	 
    	@ea = Ea.find(params[:id])
   
    end

end
