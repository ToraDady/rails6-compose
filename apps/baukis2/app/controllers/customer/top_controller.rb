class Customer::TopController < ApplicationController
  def index
    # binding.pry
    render action: "index"
  end
end
