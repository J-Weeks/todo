class NotesController < ApplicationController

before_action :set_note, only: [:edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    else
      render 'form'
    end
  end

    def update
      if @note.update(note_params)
        redirect_to @note, notice: 'Note was successfully updated.'
      else
        redirect_to @note, notice: 'List was not updated.'
      end
    end

  def destroy
    @note.destroy
  end


  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:comment)
    end

end
