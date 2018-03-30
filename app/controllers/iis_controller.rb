class IisController < ApplicationController

before_action :find_ii, only: [:show, :edit, :update, :destroy]

def index
		@ii = current_user.iis.build
		@iis = Ii.all.order(created_at: :desc)
		 @users =  User.where(industry: 'Electrical').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end


def new
	 @users =  User.where(industry: 'Electrical').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

end

def create
	@ii = current_user.iis.build(ii_params)
    @ii.save
    redirect_to iis_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @ii.update(ii_params)
			redirect_to iis_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ii.destroy
		redirect_to iis_path
	end	

private

def ii_params
			
		params.require(:ii).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ii
    	 
    	@ii = Ii.find(params[:id])
   
    end
end
