class SasController < ApplicationController

before_action :find_sa, only: [:show, :edit, :update, :destroy]

	def index
	@sa = current_user.sas.build
	@sas = Sa.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Printing, publishing & Hardware').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	 @users =  User.where(industry: 'Printing, publishing & Hardware').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@sa = current_user.sas.build(sa_params)
    @sa.save
    redirect_to sas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @sa.update(sa_params)
			redirect_to sas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@sa.destroy
		redirect_to sas_path
	end


private

def sa_params
			
		params.require(:sa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_sa
    	 
    	@sa = Sa.find(params[:id])
   
    end
end
