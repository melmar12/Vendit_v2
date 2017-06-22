class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit, :update, :destroy]
  before_action :require_admin, only: [:edit, :update, :destroy]
  def new
    @document = Document.new
  end

  def edit
  end

  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        flash[:success] = 'document was successfully created'
        format.html { redirect_to dashboard_index_path}
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @document.update(document_params)
        flash[:success] = 'Document was successfully updated'
        format.html { redirect_to dashboard_index_path}
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @document.destroy
    respond_to do |format|
      flash[:success] = 'Document was successfully deleted'
      format.html { redirect_to dashboard_index_path}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:name, :doc)
    end
end
