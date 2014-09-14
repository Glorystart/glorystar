class ContentsController < ApplicationController
  before_action :set_page
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @content = @page.contents.new
  end

  def edit
  end

  def create
    @content = @page.contents.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to page_path(@page), notice: 'Content was successfully created.' }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to page_path(@page), notice: 'Content was successfully updated.' }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to page_url(@page), notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_page
      @page = Page.find(params[:page_id])
    end

    def set_content
      @content = @page.contents.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:name, :page_id)
    end
end
