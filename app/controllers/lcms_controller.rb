class LcmsController < ApplicationController

before_action :find_la, only: [:create, :edit, :update, :destroy]
before_action :find_lcm, only: [:edit, :update, :destroy]

def create
		
	@lcm= @la.lcms.create(comm_params)
	@lcm.user_id = current_user.id

	    @lcm.save
		redirect_to la_path(@la)
	
end


def edit

end

def update
	if  @lcm.update(comm_params)
		redirect_to la_path(@la)
	else
		render 'edit'
	end
end

def destroy
		
	@lcm.destroy
	redirect_to la_path(@la)
end

private
 
def comm_params
	params.require(:lcm).permit(:content)
end

def find_la
	@la = La.find(params[:la_id])
end

def find_lcm
	@lcm = @la.lcms.find(params[:id])
end

end
