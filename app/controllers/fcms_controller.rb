class FcmsController < ApplicationController

before_action :find_fa, only: [:create, :edit, :update, :destroy]
before_action :find_fcm, only: [:edit, :update, :destroy]


def create
		
	@fcm= @fa.fcms.create(comm_params)
	@fcm.user_id = current_user.id

	  @fcm.save
		redirect_to fa_path(@fa)

end


def edit

end

def update
	
	if  @fcm.update(comm_params)
		redirect_to fa_path(@fa)
	else
		render 'edit'
	end
end

def destroy
	@fcm.destroy
	redirect_to fa_path(@fa)
end
private
 
def comm_params
	params.require(:fcm).permit(:content)
end

def find_fa
	@fa = Fa.find(params[:fa_id])
end

def find_fcm
	@fcm = @fa.fcms.find(params[:id])
end
end
