class YasController < ApplicationController

before_action :find_ya, only: [:show, :edit, :update, :destroy]


def index
	@ya = current_user.yas.build
	@yas = Ya.all.order(created_at: :desc)
	 @users =  User.where(industry: 'Games, Movies & Entertainment').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end
def new
	 @users =  User.where(industry: 'Games, Movies & Entertainment').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)

	
end

def create
		@ya = current_user.yas.build(ya_params)
    @ya.save
    redirect_to yas_path
end

def show

    

	end
 def edit
 	
 end
 	def update
		
		if @ya.update(ya_params)
			redirect_to yas_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@ya.destroy
		redirect_to yas_path
	end

private

def ya_params
			
		params.require(:ya).permit(:product_name,:post_type,:market_type,:description)
    end

def find_ya
    	 
    	@ya = Ya.find(params[:id])
   
    end

end
