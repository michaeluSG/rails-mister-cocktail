class CocktailsController < ApplicationController
before_action :find_cocktail, only: [:show, :edit, :update, :destroy]

def index
  @cocktails = Cocktail.all
end

def show
end

def new
  @cocktail = Cocktail.new
end

def create
  @cocktail = Cocktail.new(cocktails_params)
  if @cocktail.save
    redirect_to @cocktails, notice: 'This cocktail was successfully created'
  else
    render :new
  end
end

def edit
end

def update
  @cocktail = Cocktail.new(cocktails_params)
  if @cocktail.save
    redirect_to @cocktails, notice: 'This cocktail was successfully updated'
  else
    render :edit
  end
end

def destroy
  @cocktail.destroy
end

private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktails_params
    params.require(:cocktails).permit(:name)
  end

end
