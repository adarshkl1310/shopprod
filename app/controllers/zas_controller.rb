class ZasController < ApplicationController

before_action :find_za, only: [:show, :edit, :update, :destroy]

def index
@za = current_user.zas.build
@zas = Za.all.order(created_at: :desc)

 @users =  User.where(industry: 'Business services & Freelancer').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new

	 @users =  User.where(industry: 'Business services & Freelancer').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)


end

def create
		@za = current_user.zas.build(za_params)
    @za.save
    redirect_to zas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @za.update(za_params)
			redirect_to zas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@za.destroy
		redirect_to zas_path
	end



private

def za_params
			
		params.require(:za).permit(:product_name,:post_type,:market_type,:description)
    end

def find_za
    	 
    	@za = Za.find(params[:id])
   
    end
end
