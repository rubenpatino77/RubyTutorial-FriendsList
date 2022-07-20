class RubyRailsTutorial1sController < ApplicationController
  before_action :set_ruby_rails_tutorial_1, only: %i[ show edit update destroy ]

  # GET /ruby_rails_tutorial_1s or /ruby_rails_tutorial_1s.json
  def index
    @ruby_rails_tutorial_1s = RubyRailsTutorial1.all
  end

  # GET /ruby_rails_tutorial_1s/1 or /ruby_rails_tutorial_1s/1.json
  def show
  end

  # GET /ruby_rails_tutorial_1s/new
  def new
    @ruby_rails_tutorial_1 = RubyRailsTutorial1.new
  end

  # GET /ruby_rails_tutorial_1s/1/edit
  def edit
  end

  # POST /ruby_rails_tutorial_1s or /ruby_rails_tutorial_1s.json
  def create
    @ruby_rails_tutorial_1 = RubyRailsTutorial1.new(ruby_rails_tutorial_1_params)

    respond_to do |format|
      if @ruby_rails_tutorial_1.save
        format.html { redirect_to ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1), notice: "Ruby rails tutorial 1 was successfully created." }
        format.json { render :show, status: :created, location: @ruby_rails_tutorial_1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ruby_rails_tutorial_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruby_rails_tutorial_1s/1 or /ruby_rails_tutorial_1s/1.json
  def update
    respond_to do |format|
      if @ruby_rails_tutorial_1.update(ruby_rails_tutorial_1_params)
        format.html { redirect_to ruby_rails_tutorial_1_url(@ruby_rails_tutorial_1), notice: "Ruby rails tutorial 1 was successfully updated." }
        format.json { render :show, status: :ok, location: @ruby_rails_tutorial_1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ruby_rails_tutorial_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_rails_tutorial_1s/1 or /ruby_rails_tutorial_1s/1.json
  def destroy
    @ruby_rails_tutorial_1.destroy

    respond_to do |format|
      format.html { redirect_to ruby_rails_tutorial_1s_url, notice: "Ruby rails tutorial 1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruby_rails_tutorial_1
      @ruby_rails_tutorial_1 = RubyRailsTutorial1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ruby_rails_tutorial_1_params
      params.require(:ruby_rails_tutorial_1).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
