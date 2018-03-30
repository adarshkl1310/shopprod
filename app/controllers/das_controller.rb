class DasController < ApplicationController

before_action :find_da, only: [:show, :edit, :update, :destroy]

	def index
@da = current_user.das.build
@das = Da.all.order(created_at: :desc)
 @users =  User.where(industry: 'Cosmetic & Beauty').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Cosmetic & Beauty').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@da = current_user.das.build(da_params)
    @da.save
    redirect_to das_path
end



def show

    

	end
 def edit
 	
 end
 	def update
	
		if @da.update(da_params)
			redirect_to das_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@da.destroy
		redirect_to das_path
	end
private

def da_params
			
		params.require(:da).permit(:product_name,:post_type,:description,:market_type)
    end

def find_da
    	 
    	@da = Da.find(params[:id])
   
    end	
end
