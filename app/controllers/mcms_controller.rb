class McmsController < ApplicationController
before_action :find_ma, only: [:create, :edit, :update, :destroy]
before_action :find_mcm, only: [:edit, :update, :destroy]


def create
		
	@mcm= @ma.mcms.create(comm_params)
	@mcm.user_id = current_user.id

	    @mcm.save
		redirect_to ma_path(@ma)
	
end


def edit

end

def update
		
	if  @mcm.update(comm_params)
		redirect_to ma_path(@ma)
	else
		render 'edit'
	end
end

def destroy
	
	@mcm.destroy
	redirect_to ma_path(@ma)
	
end

private
 
def comm_params
	params.require(:mcm).permit(:content)
end

def find_ma
	@ma = Ma.find(params[:ma_id])
end

def find_mcm
	@mcm = @ma.mcms.find(params[:id])
end


end
