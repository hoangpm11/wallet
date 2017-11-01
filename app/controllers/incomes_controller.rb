class IncomesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  # GET /incomes



  # GET /incomes.json
  def index
    @incomes = Income.order('issued ASC').all.paginate(:page => params[:page], :per_page => 6)
    
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
  end

  # GET /incomes/new
 
  def new
    @categories =current_user.categories
    @income = Income.new
  end

  # GET /incomes/1/edit
  def edit
    @categories =current_user.categories
  end

  # POST /incomes
  # POST /incomes.json
  def create
    # byebug
    @income = current_user.incomes.new(income_params)

    respond_to do |format|
      if @income.save
        format.html { redirect_to incomes_url, notice: 'Income was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to incomes_url, notice: 'Income was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url, notice: 'Income was successfully destroyed.' }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_params
      # byebug
      params.require(:income).permit(:amount, :category_ids, :issued)
   
    end
end

