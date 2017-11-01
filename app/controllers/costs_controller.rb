class CostsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_cost, only: [:show, :edit, :update, :destroy]

  # GET /costs
  # GET /costs.json
  def index
    @costs = Cost.all.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /costs/1
  # GET /costs/1.json

  #Cost.find(4).category_costs.create(category_id:1)

  def show
  end

 
  def new
    @cost  = Cost.new

  end

  # GET /costs/1/edit
  def edit
  end

  # POST /costs trong bang c
  # POST /costs.json
  def create

    @cost = current_user.costs.new(cost_params)
    
  

    respond_to do |format|
      if @cost.save
        format.html { redirect_to costs_path, notice: 'Cost was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  # PATCH/PUT /costs/1
  # PATCH/PUT /costs/1.json
  def update
   
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to costs_path, notice: 'Cost was successfully updated.' }
       
      else
        format.html { render :edit }
       
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.json
  def destroy
    @cost.destroy
    respond_to do |format|
      format.html { redirect_to costs_url, notice: 'Cost was successfully destroyed.' }
      
    end
  end
 #paramsparams["regdate(1i)"].to_i,
                   # params["regdate(2i)"].to_i,
                    #params["regdate(3i)"].to_i)
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:cost).permit(:amount, :category_ids, :issued )
    end
end

