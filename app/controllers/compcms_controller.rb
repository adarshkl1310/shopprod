class CompcmsController < ApplicationController

before_action :find_comp, only: [:create, :edit, :update, :destroy]
before_action :find_compcm, only: [:edit, :update, :destroy]



		def create
		
		@compcm= @comp.compcms.create(comm_params)
		@compcm.user_id = current_user.id

	    @compcm.save
			redirect_to comp_path(@comp)
	
	end


    def edit
    
	end

	def update
		
			
		
	end

	def destroy
	   
		@compcm.destroy
		redirect_to comp_path(@comp)
	end

	private

		def comm_params
			params.require(:compcm).permit(:content)
		end

		def find_comp
			@comp = Comp.find(params[:comp_id])
		end

		def find_compcm
			@compcm = @comp.compcms.find(params[:id])
		end

end
