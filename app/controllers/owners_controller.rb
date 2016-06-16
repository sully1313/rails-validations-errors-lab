class OwnersController < ApplicationController

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
    if @owner.save
    format.html { redirect_to owner_path(owner), notice: 'Owner was succesfully created' }
    format.json { render :show, status: :create, location: @owner}
    else
    format.html { render :new }
    format.json { render json: @owner.errors, status: :unprocessable_entity }
    end
    end
  end

  def show
    owner_id = params[:id]
    @owner = Owner.find_by(id: owner_id)
  end

  def edit
    # stretch
  end

  def update
    # stretch
  end

  def destroy
    # stretch
  end


  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :phone)
  end

end
