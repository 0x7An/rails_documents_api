class FDocumentsController < ApplicationController
  before_action :set_f_document, only: [:show, :update, :destroy]

  # GET /f_documents
  def index
    @f_documents = FDocument.order('created_at DESC')

    render json: @f_documents
  end

  # GET /f_documents/1
  def show
    render json: @f_document
  end

  # POST /f_documents
  def create
    @f_document = FDocument.new(f_document_params)

    if @f_document.save
      render json: @f_document, status: :created, location: @f_document
    else
      render json: @f_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /f_documents/1
  def update
    if @f_document.update(f_document_params)
      render json: @f_document
    else
      render json: @f_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /f_documents/1
  def destroy
    @f_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_document
      @f_document = FDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def f_document_params
      params.require(:f_document).permit(:title, :description, :file_url, :image_url)
    end
end
