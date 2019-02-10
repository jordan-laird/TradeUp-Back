class Api::V1::TransactionsController < Api::V1::ApplicationController
    before_action :define_current_transaction

    # skip_before_action :check_authentication, only: [ :index, :create ]
    
    def create
        puts transaction_params
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end
    
    def index
        render json: Transaction.all
    end
    
    def show
        render json: current_transaction
    end
    
    def update
        current_transaction.update(transaction_params)
        render json: current_transaction
    end
    
    def destroy
        current_transaction.destroy
        render json: current_transaction
    end
    
    def transaction_params
        params.require(:transaction).permit(:shares_purchased, :purchased_price, :status, :user_id, :stock, :stock_symbol, :sold_price)
    end
    
    def define_current_transaction
        if params[:id]
            @current_transaction = Transaction.find(params[:id])
        else
            @current_transaction = Transaction.new
        end
    end
    
    def current_transaction
        @current_transaction
    end
end
