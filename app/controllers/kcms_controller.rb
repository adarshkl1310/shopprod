class KcmsController < ApplicationController

before_action :find_ka, only: [:create, :edit, :update, :destroy]
before_action :find_kcm, only: [:edit, :update, :destroy]

def create
		
	@kcm= @ka.kcms.create(comm_params)
	@kcm.user_id = current_user.id

        @kcm.save
		redirect_to ka_path(@ka)

end


def edit

end

def update
	if  @kcm.update(comm_params)
		redirect_to ka_path(@ka)
	else
		render 'edit'
	end
end

def destroy
		
	@kcm.destroy
	redirect_to ka_path(@ka)
end

private
 
def comm_params
	params.require(:kcm).permit(:content)
end

def find_ka
	@ka = Ka.find(params[:ka_id])
end

def find_kcm
	@kcm = @ka.kcms.find(params[:id])
end

end
