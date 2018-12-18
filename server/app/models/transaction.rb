class Transaction < ApplicationRecord
    belongs_to :users
    belongs_to :stocks

end
