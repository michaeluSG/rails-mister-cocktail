class DosesController < ApplicationController

  before_action :find_dose, only: [:show, :edit, :update, :destroy]

def index
  @doses = Dose.all
end

def show
end

def new
  @dose = Dose.new
end

def create
  @dose = Dose.new(doses_params)
  if @dose.save
    redirect_to @doses, notice: 'This dose was successfully created'
  else
    render :new
  end
end

def edit
end

def update
  @dose = Dose.new(doses_params)
  if @dose.save
    redirect_to @doses, notice: 'This dose was successfully updated'
  else
    render :edit
  end
end

private

  def find_dose
    @dose = Dose.find(params(cocktail[:id]))
  end

  def doses_params
    params.require(:doses).permit(:description, :cocktail_id)
  end

end
