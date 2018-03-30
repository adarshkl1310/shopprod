class VcmsController < ApplicationController

before_action :find_va, only: [:create, :edit, :update, :destroy]
before_action :find_vcm, only: [:edit, :update, :destroy]


def create
		
	@vcm= @va.vcms.create(comm_params)
	@vcm.user_id = current_user.id

	    @vcm.save
		redirect_to va_path(@va)
	
end


def edit

end

def update
	
	if  @vcm.update(comm_params)
		redirect_to va_path(@va)
	else
		render 'edit'
	end
end

def destroy
	
	@vcm.destroy
	redirect_to va_path(@va)
end

private
 
def comm_params
	params.require(:vcm).permit(:content)
end

def find_va
	@va = Va.find(params[:va_id])
end

def find_vcm
	@vcm = @va.vcms.find(params[:id])
end

end
