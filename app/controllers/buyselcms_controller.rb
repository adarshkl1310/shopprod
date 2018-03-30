class BuyselcmsController < ApplicationController

before_action :find_buysel, only: [:create, :edit, :update, :destroy]
before_action :find_buyselcm, only: [:edit, :update, :destroy]

        def index
        end
        

		def create
		
		@buyselcm= @buysel.buyselcms.create(comm_params)
		@buyselcm.user_id = current_user.id

		@buyselcm.save
			redirect_to buysel_path(@buysel)
		
	end


    def edit
    
    
    end


	

	def show
		

	end
	def update
		 
		if @buyselcm.update(comm_params)
			redirect_to buysel_path(@buysel)
		else
			render 'edit'
		end
			
		
	end

	def destroy
	   
		@buyselcm.destroy
		redirect_to buysel_path(@buysel)
	end

	private

		def comm_params
			params.require(:buyselcm).permit(:content)
		end

		def find_buysel
			@buysel = Buysel.find(params[:buysel_id])
		end

		def find_buyselcm
			@buyselcm = @buysel.buyselcms.find(params[:id])
		end
end
