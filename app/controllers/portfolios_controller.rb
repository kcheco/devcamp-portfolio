class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item was successfully created.' }
        #format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        #format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    #perform lookup
  	@portfolio_item = Portfolio.find(params[:id])
  end

  def update
    #perform lookup
    @portfolio_item = Portfolio.find(params[:id])

    #redirect to index page
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Record was successfully updated.' }
        #format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    #perform lookup
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    #perform lookup
    @portfolio_item = Portfolio.find(params[:id])

    #destroy the record
    @portfolio_item.destroy

    #redirect to index page
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio item has been deleted'}
      #format.json {head :no_content}
    end
  end
end
