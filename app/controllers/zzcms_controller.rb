class ZzcmsController < ApplicationController

before_action :find_zza, only: [:create, :edit, :update, :destroy]
before_action :find_zzcm, only: [:edit, :update, :destroy]


def create
		
	@zzcm= @zza.zzcms.create(comm_params)
	@zzcm.user_id = current_user.id

	    @zzcm.save
		redirect_to zza_path(@zza)

end


def edit

end

def update
		
	if  @zzcm.update(comm_params)
		redirect_to zza_path(@zza)
	else
		render 'edit'
	end
end

def destroy
		
	@zzcm.destroy
	redirect_to zza_path(@zza)
end

private
 
def comm_params
	params.require(:zzcm).permit(:content)
end

def find_zza
	@zza = Zza.find(params[:zza_id])
end

def find_zzcm
	@zzcm = @zza.zzcms.find(params[:id])
end

end
