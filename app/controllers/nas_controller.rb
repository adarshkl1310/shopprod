class NasController < ApplicationController

before_action :find_na, only: [:show, :edit, :update, :destroy]

	def index
@na = current_user.nas.build
@nas = Na.all.order(created_at: :desc)
 @users =  User.where(industry: 'Machinery & Industrial parts').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	 @users =  User.where(industry: 'Machinery & Industrial parts').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@na = current_user.nas.build(na_params)
    @na.save
    redirect_to nas_path
end

def show

    

	end
 def edit
 
 end
 	def update
		
		if @na.update(na_params)
			redirect_to nas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@na.destroy
		redirect_to nas_path
	end

private

def na_params
			
		params.require(:na).permit(:product_name,:post_type,:market_type,:description)
    end

def find_na
    	 
    	@na = Na.find(params[:id])
   
    end
end
