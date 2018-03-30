class BuyselsController < ApplicationController
before_action :find_buysel, only: [:show, :edit, :update, :destroy]

def index
    
 @buysels = Buysel.order(created_at: :desc).search(params[:search])
 @buysel = Buysel.new
 @users = User.all
end

def new

 @users = User.all
end


def create
    @buysel = current_user.buysels.build(buysel_params)
    if @buysel.save
       redirect_to buysels_path 
     
  end
end

def show
 
   @user = Buysel.find(params[:id].to_i)
   
    
end


def edit
 	   
end

def update
		
    if  @buysel.update(buysel_params)
		redirect_to buysels_path
	else
		render 'edit'
end
end

def destroy
	
	@buysel.destroy
	redirect_to buysels_path
end	

private

def buysel_params
			
	params.require(:buysel).permit(:product_name,:post_type,:hphoto,:description,:market_type)

end

def find_buysel
    	 
    @buysel = Buysel.find(params[:id])
 

   
end
end 


	

