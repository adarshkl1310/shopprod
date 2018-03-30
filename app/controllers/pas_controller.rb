class PasController < ApplicationController

before_action :find_pa, only: [:show, :edit, :update, :destroy]

	def index
@pa = current_user.pas.build
@pas = Pa.all.order(created_at: :desc)
 @users =  User.where(industry: 'Bags, Rubber & Plastics').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	 @users =  User.where(industry: 'Bags, Rubber & Plastics').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@pa = current_user.pas.build(pa_params)
    @pa.save
    redirect_to pas_path
end

def show

   

	end
 def edit
 	
 end
 	def update
	
		if @pa.update(pa_params)
			redirect_to pas_path
		else
			render 'edit'
		end
	end

	def destroy

		@pa.destroy
		redirect_to pas_path
	end

private

def pa_params
			
		params.require(:pa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_pa
    	 
    	@pa = Pa.find(params[:id])
   
    end

end
