class RasController < ApplicationController

before_action :find_ra, only: [:show, :edit, :update, :destroy]

	def index
	@ra = current_user.ras.build
	@ras = Ra.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Paper & Packing material').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Paper & Packing material').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
		@ra = current_user.ras.build(ra_params)
    @ra.save
    redirect_to ras_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @ra.update(ra_params)
			redirect_to ras_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ra.destroy
		redirect_to ras_path
	end

private

def ra_params
			
		params.require(:ra).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ra
    	 
    	@ra = Ra.find(params[:id])
   
    end
end
