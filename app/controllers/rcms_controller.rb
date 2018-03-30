class RcmsController < ApplicationController

before_action :find_ra, only: [:create, :edit, :update, :destroy]
before_action :find_rcm, only: [:edit, :update, :destroy]

def create
	
	@rcm= @ra.rcms.create(comm_params)
	@rcm.user_id = current_user.id

	    @rcm.save
		redirect_to ra_path(@ra)
	
end


def edit

end

def update
		
	if  @rcm.update(comm_params)
		redirect_to ra_path(@ra)
	else
		render 'edit'
	end
end

def destroy

	@rcm.destroy
	redirect_to ra_path(@ra)
end

private
 
def comm_params
	params.require(:rcm).permit(:content)
end

def find_ra
	@ra = Ra.find(params[:ra_id])
end

def find_rcm
	@rcm = @ra.rcms.find(params[:id])
end

end
