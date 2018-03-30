class UcmsController < ApplicationController

before_action :find_ua, only: [:create, :edit, :update, :destroy]
before_action :find_ucm, only: [:edit, :update, :destroy]



def create
		
	@ucm= @ua.ucms.create(comm_params)
	@ucm.user_id = current_user.id

	    @ucm.save
		redirect_to ua_path(@ua)
	
end


def edit

end

def update
		
	if  @ucm.update(comm_params)
		redirect_to ua_path(@ua)
	else
		render 'edit'
	end
end

def destroy
		
	@ucm.destroy
	redirect_to ua_path(@ua)

end

private
 
def comm_params
	params.require(:ucm).permit(:content)
end

def find_ua
	@ua = Ua.find(params[:ua_id])
end

def find_ucm
	@ucm = @ua.ucms.find(params[:id])
end


end
