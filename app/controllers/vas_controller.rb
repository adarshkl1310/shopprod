class VasController < ApplicationController


before_action :find_va, only: [:show, :edit, :update, :destroy]

def index
	@va = current_user.vas.build
	@vas = Va.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Pipes, Tubes & Fitting').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
 @users =  User.where(industry: 'Pipes, Tubes & Fitting').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
	
end
def create
		@va = current_user.vas.build(va_params)
    @va.save
    redirect_to vas_path
end

def show

   

	end
 def edit
 	
 end
 	def update
		
		if @va.update(va_params)
			redirect_to vas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@va.destroy
		redirect_to vas_path
	end


private

def va_params
			
		params.require(:va).permit(:product_name,:post_type,:market_type,:description)
    end

def find_va
    	 
    	@va = Va.find(params[:id])
   
    end
	
end
