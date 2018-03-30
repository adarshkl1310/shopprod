class CcmsController < ApplicationController


before_action :find_ca, only: [:create, :edit, :update, :destroy]
before_action :find_ccm, only: [:edit, :update, :destroy]



		def create
		
		@ccm= @ca.ccms.create(comm_params)
		@ccm.user_id = current_user.id

		 @ccm.save
			redirect_to ca_path(@ca)
		
	end


    def edit
    
	end

	def update
		 
		if @ccm.update(comm_params)
			redirect_to ca_path(@ca)
		else
			render 'edit'
		end
			
		
	end

	def destroy
	   
		@ccm.destroy
		redirect_to ca_path(@ca)
	end

	private

		def comm_params
			params.require(:ccm).permit(:content)
		end

		def find_ca
			@ca = Ca.find(params[:ca_id])
		end

		def find_ccm
			@ccm = @ca.ccms.find(params[:id])
		end

end
