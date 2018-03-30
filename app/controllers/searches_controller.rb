class SearchesController < ApplicationController

	def new
	@search = Search.new
	@shop = Shop.all

	 if params[:keyword].present? 
        @shops = @shops.by_keyword(params[:keyword])
end
end
def create
	@search = Search.create(search_params)
	redirect_to @search
	
end

def show
  
	@search = Search.find(params[:id])
end

private

def search_params
	params.require(:search).permit(:keywords,:keywords2,:keywords3,:keywords4)
end

end
