class ZcmsController < ApplicationController

before_action :find_za, only: [:create, :edit, :update, :destroy]
before_action :find_zcm, only: [:edit, :update, :destroy]



def create
		
	@zcm= @za.zcms.create(comm_params)
	@zcm.user_id = current_user.id

	    @zcm.save
		redirect_to za_path(@za)
	
end


def edit

end

def update
		
    if  @zcm.update(comm_params)
		redirect_to za_path(@za)
	else
		render 'edit'
	end
end

def destroy
		
	@zcm.destroy
	redirect_to za_path(@za)
end

private
 
def comm_params
	params.require(:zcm).permit(:content)
end

def find_za
	@za = Za.find(params[:za_id])
end

def find_zcm
	@zcm = @za.zcms.find(params[:id])
end

end
