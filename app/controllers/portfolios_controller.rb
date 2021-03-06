class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
	end

	def create
    @portfolio_item = Portfolio.new(portfolio_params)

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
      if @portfolio_item.update(portfolio_params)
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

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name]
                                        )
    end
end
