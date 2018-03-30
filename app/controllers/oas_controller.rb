class OasController < ApplicationController

before_action :find_oa, only: [:show, :edit, :update, :destroy]

def index
	@oa =current_user.oas.build
	@oas = Oa.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Valuable Jewelry, Gem & Metal').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	@users =  User.where(industry: 'Valuable Jewelry, Gem & Metal').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@oa = current_user.oas.build(oa_params)
    @oa.save
    redirect_to oas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @oa.update(oa_params)
			redirect_to oas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@oa.destroy
		redirect_to oas_path
	end	
private

def oa_params
			
		params.require(:oa).permit(:product_name,:post_type,:market_type,:description)
    end

def find_oa
    	 
    	@oa = Oa.find(params[:id])
   
    end

end
