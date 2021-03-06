class ListsController < ApplicationController

before_action :set_list, only: [:edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render 'form'
    end
  end

    def update
      @list.update(list_params)
        redirect_to @list
    end

  def destroy
    @list.destroy
  end


  private

    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :category)
    end

end
