class SerieCommentsController < ApplicationController
  before_action :set_serie_comment, only: [:show, :edit, :update, :destroy]

  # GET /serie_comments
  # GET /serie_comments.json
  def index
    @serie_comments = SerieComment.all
  end

  # GET /serie_comments/1
  # GET /serie_comments/1.json
  def show
  end

  # GET /serie_comments/new
  def new
    @serie_comment = SerieComment.new
  end

  # GET /serie_comments/1/edit
  def edit
  end

  # POST /serie_comments
  # POST /serie_comments.json
  def create
    @serie_comment = SerieComment.new(serie_comment_params)

    respond_to do |format|
      if @serie_comment.save
        format.html { redirect_to @serie_comment, notice: 'Serie comment was successfully created.' }
        format.json { render :show, status: :created, location: @serie_comment }
      else
        format.html { render :new }
        format.json { render json: @serie_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serie_comments/1
  # PATCH/PUT /serie_comments/1.json
  def update
    respond_to do |format|
      if @serie_comment.update(serie_comment_params)
        format.html { redirect_to @serie_comment, notice: 'Serie comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @serie_comment }
      else
        format.html { render :edit }
        format.json { render json: @serie_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serie_comments/1
  # DELETE /serie_comments/1.json
  def destroy
    @serie_comment.destroy
    respond_to do |format|
      format.html { redirect_to serie_comments_url, notice: 'Serie comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serie_comment
      @serie_comment = SerieComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serie_comment_params
      params.require(:serie_comment).permit(:content, :series_id, :users_id)
    end
end
