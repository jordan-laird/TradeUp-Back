class Api::V1::StocksController < Api::V1::ApplicationController
    before_action :define_current_stock

    def create
        stock = Stock.create(stock_params)
        render json: stock 
    end

    def index
        render json: Stock.all
    end

    def show
        render json: current_stock
    end

    def update
        current_stock.update(stock_params)
        render json: current_stock
    end

    def destroy
        current_stock.destroy
        render json: current_stock
    end

    def stock_params
        params.require(:stock).permit(:account_symbol)
    end

    def define_current_stock
        if params[:id]
            @current_stock = Stock.find(params[:id])
        else
            @current_stock = Stock.new
        end
    end

    def current_stock
        @current_stock
    end
    
end
