class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    search = params["search"]
    if search.present?
      name = search["name"]
      @cocktails = @cocktails.where("name LIKE ?", "%#{name}%")
    end
  end
end
