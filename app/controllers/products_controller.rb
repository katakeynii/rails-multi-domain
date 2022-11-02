class ProductsController < ApplicationController

    def index
        @sd = request.subdomain
    
      @shop = Shop.find_by(subdomain: request.subdomain)

      puts "%" * 300
      puts request.subdomain
      puts @shop.inspect
    end
  end