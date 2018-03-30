class GcmsController < ApplicationController
before_action :find_ga, only: [:create, :edit, :update, :destroy]
before_action :find_gcm, only: [:edit, :update, :destroy]


def create
		
    @gcm= @ga.gcms.create(comm_params)
    @gcm.user_id = current_user.id

	    @gcm.save
		redirect_to ga_path(@ga)

end


def edit

end

def update
	
	if  @gcm.update(comm_params)
		redirect_to ga_path(@ga)
	else
		render 'edit'
	end
end

def destroy
	@gcm.destroy
	redirect_to ga_path(@ga)
end

private
 
def comm_params
	params.require(:gcm).permit(:content)
end

def find_ga
	@ga = Ga.find(params[:ga_id])
end

def find_gcm
	@gcm = @ga.gcms.find(params[:id])
end


end
