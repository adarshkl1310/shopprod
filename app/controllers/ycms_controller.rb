class YcmsController < ApplicationController

before_action :find_ya, only: [:create, :edit, :update, :destroy]
before_action :find_ycm, only: [:edit, :update, :destroy]


def create

	@ycm= @ya.ycms.create(comm_params)
	@ycm.user_id = current_user.id

	    @ycm.save
		redirect_to ya_path(@ya)
	
end


def edit

end

def update
	
	if  @ycm.update(comm_params)
		redirect_to ya_path(@ya)
	else
		render 'edit'
	end
end

def destroy
		
	@ycm.destroy
	redirect_to ya_path(@ya)
end

private
 
def comm_params
	params.require(:ycm).permit(:content)
end

def find_ya
	@ya = Ya.find(params[:ya_id])
end

def find_ycm
	@ycm = @ya.ycms.find(params[:id])
end

end
