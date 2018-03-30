class BasController < ApplicationController

before_action :find_ba, only: [:show, :edit, :update, :destroy]


def index
	
	   @ba = current_user.bas.build
	   @bas = Ba.all.order(created_at: :desc)
    @users =  User.where(industry: 'Apparel, Textile & Leather').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
    end

    def new
    	
    @users =  User.where(industry: 'Apparel, Textile & Leather').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc) 	
    end

def create
	
	   @ba = current_user.bas.build(ba_params)
       @ba.save
       redirect_to bas_path
    end

def show

    end

def edit

 	end
 	
def update
		
    if  @ba.update(ba_params)
	    redirect_to bas_path
    else
	    render 'edit'
	end
	end


def destroy
		
		@ba.destroy
		redirect_to bas_path
	end
   

private

def ba_params
			
		params.require(:ba).permit(:product_name,:post_type,:description,:market_type)
    end

def find_ba
    	 
    	@ba = Ba.find(params[:id])
   
    end
end
