class TtsController < ApplicationController

before_action :find_tt, only: [:show, :edit, :update, :destroy]

	def index
@tt = current_user.tts.build
@tts = Tt.all.order(created_at: :desc)
 @users =  User.where(industry: 'Security, Alarm & Safety').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
end
def new
	@users =  User.where(industry: 'Security, Alarm & Safety').select([:username,:business_type,:contry,:id]).all.order(created_at: :desc)
	
end

def create
	@tt = current_user.tts.build(tt_params)
    @tt.save
    redirect_to tts_path
end

def show

   

	end
 def edit
 	
 end
 	def update
		
		if @tt.update(tt_params)
			redirect_to tts_path
		else
			render 'edit'
		end
	end

	def destroy
		
		@tt.destroy
		redirect_to tts_path
	end
private

def tt_params
			
		params.require(:tt).permit(:product_name,:post_type,:market_type,:description)
    end

def find_tt
    	 
    	@tt = Tt.find(params[:id])
end
end