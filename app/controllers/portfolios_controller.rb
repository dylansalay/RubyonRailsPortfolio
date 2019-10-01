class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
            if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
            else
            format.html { render :new }
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])
        
        respond_to do |format|
            if @portfolio_item.update(portfolio_params)
                format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_blog
    #   @portfolio = Portfolio.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end