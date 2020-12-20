class TransbanksController < ApplicationController
  before_action :set_transbank, only: [:show, :edit, :update, :destroy]

  # GET /transbanks
  # GET /transbanks.json
  def index
    @transbanks = Transbank.all
  end

  # GET /transbanks/1
  # GET /transbanks/1.json
  def show
  end

  # GET /transbanks/new
  def new
    @transbank = Transbank.new
  end

  # GET /transbanks/1/edit
  def edit
  end

  # POST /transbanks
  # POST /transbanks.json
  def create
    @transbank = Transbank.new(transbank_params)

    respond_to do |format|
      if @transbank.save
        format.html { redirect_to @transbank, notice: 'Transbank was successfully created.' }
        format.json { render :show, status: :created, location: @transbank }
      else
        format.html { render :new }
        format.json { render json: @transbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transbanks/1
  # PATCH/PUT /transbanks/1.json
  def update
    respond_to do |format|
      if @transbank.update(transbank_params)
        format.html { redirect_to @transbank, notice: 'Transbank was successfully updated.' }
        format.json { render :show, status: :ok, location: @transbank }
      else
        format.html { render :edit }
        format.json { render json: @transbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transbanks/1
  # DELETE /transbanks/1.json
  def destroy
    @transbank.destroy
    respond_to do |format|
      format.html { redirect_to transbanks_url, notice: 'Transbank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transbank
      @transbank = Transbank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transbank_params
      params.fetch(:transbank, {})
    end
end
