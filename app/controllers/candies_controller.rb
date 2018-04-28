class CandiesController < ApplicationController
    has_many :purchases
    has_many :users, through: :purchases
end
