class PcmsController < ApplicationController

before_action :find_pa, only: [:create, :edit, :update, :destroy]
before_action :find_pcm, only: [:edit, :update, :destroy]


def create
		
	@pcm= @pa.pcms.create(comm_params)
	@pcm.user_id = current_user.id

	    @pcm.save
		redirect_to pa_path(@pa)
	
	
end


def edit

end

def update
		
	if  @pcm.update(comm_params)
		redirect_to pa_path(@pa)
	else
		render 'edit'
	end
end

def destroy
		
	@pcm.destroy
	redirect_to pa_path(@pa)
end

private
 
def comm_params
	params.require(:pcm).permit(:content)
end

def find_pa
	@pa = Pa.find(params[:pa_id])
end

def find_pcm
	@pcm = @pa.pcms.find(params[:id])
end
	

end
