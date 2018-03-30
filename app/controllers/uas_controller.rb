class UasController < ApplicationController

before_action :find_ua, only: [:show, :edit, :update, :destroy]

	def index
	@ua = current_user.uas.build
	@uas= Ua.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Laboratory & Measuring instruments').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end

def new
	 @users =  User.where(industry: 'Laboratory & Measuring instruments').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end
def create
		@ua = current_user.uas.build(ua_params)
    @ua.save
    redirect_to uas_path
end

def show

    

	end
 def edit

 end
 	def update
		
		if @ua.update(ua_params)
			redirect_to uas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ua.destroy
		redirect_to uas_path
	end
private

def ua_params
			
		params.require(:ua).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ua
    	 
    	@ua = Ua.find(params[:id])
   
    end
end
