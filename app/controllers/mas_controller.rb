class MasController < ApplicationController

before_action :find_ma, only: [:show, :edit, :update, :destroy]


	def index
@ma = current_user.mas.build
@mas = Ma.all.order(created_at: :desc)
 @users =  User.where(industry: 'Household & Kitchen').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Household & Kitchen').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@ma = current_user.mas.build(ma_params)
    @ma.save
    redirect_to mas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @ma.update(ma_params)
			redirect_to mas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ma.destroy
		redirect_to mas_path
	end

private

def ma_params
			
		params.require(:ma).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ma
    	 
    	@ma = Ma.find(params[:id])
   
    end
end
