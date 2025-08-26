class RunesController < ApplicationController
  before_action :set_rune, only: %i[ show edit update destroy ]

  # GET /runes or /runes.json
  def index
    @runes = Rune.all
  end

  # GET /runes/1 or /runes/1.json
  def show
  end

  # GET /runes/new
  def new
    @rune = Rune.new
  end

  # GET /runes/1/edit
  def edit
  end

  # POST /runes or /runes.json
  def create
    @rune = Rune.new(rune_params)

    respond_to do |format|
      if @rune.save
        # format.html { redirect_to @rune, notice: "Rune was successfully created." }
        format.html { redirect_to new_rune_path, notice: "Evens was successfully created." }
        format.json { render :show, status: :created, location: @rune }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runes/1 or /runes/1.json
  def update
    respond_to do |format|
      if @rune.update(rune_params)
        format.html { redirect_to @rune, notice: "Rune was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @rune }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runes/1 or /runes/1.json
  def destroy
    @rune.destroy!

    respond_to do |format|
      format.html { redirect_to runes_path, notice: "Rune was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rune
      @rune = Rune.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def rune_params
      params.expect(rune: [ :social, :username, :principal, :link ])
    end
end
