class TrainingClassesController < ApplicationController
  before_action :set_training_class, only: [:show, :edit, :update, :destroy]

  # GET /training_classes
  # GET /training_classes.json
  def index
    @training_classes = TrainingClass.all
  end

  # GET /training_classes/1
  # GET /training_classes/1.json
  def show
  end

  # GET /training_classes/new
  def new
    @training_class = TrainingClass.new
  end

  # GET /training_classes/1/edit
  def edit
  end

  # POST /training_classes
  # POST /training_classes.json
  def create
    @training_class = TrainingClass.new(training_class_params)

    respond_to do |format|
      if @training_class.save
        format.html { redirect_to @training_class, notice: 'Training class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @training_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @training_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_classes/1
  # PATCH/PUT /training_classes/1.json
  def update
    respond_to do |format|
      if @training_class.update(training_class_params)
        format.html { redirect_to @training_class, notice: 'Training class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @training_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_classes/1
  # DELETE /training_classes/1.json
  def destroy
    @training_class.destroy
    respond_to do |format|
      format.html { redirect_to training_classes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_class
      @training_class = TrainingClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_class_params
      params[:training_class]
    end
end
