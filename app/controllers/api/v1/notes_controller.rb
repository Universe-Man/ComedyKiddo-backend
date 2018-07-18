class Api::V1::NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(get_params)
    @note.save
  end

  def update
    @note = Note.find(params[:id])
    @note.update(get_params)
    @note.save
  end

  def delete
    @note = Note.find(params[:id])
    @note.destroy
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  private

  def get_params
    params.require(:note).permit(:content)
  end

end
