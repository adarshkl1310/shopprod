class DcmsController < ApplicationController


before_action :find_da, only: [:create, :edit, :update, :destroy]
before_action :find_dcm, only: [:edit, :update, :destroy]


def create
		
	@dcm= @da.dcms.create(comm_params)
	@dcm.user_id = current_user.id

	  @dcm.save
		redirect_to da_path(@da)
	
end


def edit

end

def update
		
    if  @dcm.update(comm_params)
		redirect_to da_path(@da)
	else
		render 'edit'
	end
end

def destroy
	
	@dcm.destroy
	redirect_to da_path(@da)
	
end

private
 
def comm_params
	params.require(:dcm).permit(:content)
end

def find_da
	@da = Da.find(params[:da_id])
end

def find_dcm
	@dcm = @da.dcms.find(params[:id])
end	

end
