class CashflowsController < ApplicationController
  before_action :set_cashflow, only: %[:show :edit :update :destroy]
  
  # GET /cashflows
  # GET /cashflows.json
  
  def dashboard
    #@cashflows = current_user.cashflows
   # cashflows_sums =@cashflows.inject do |sum,element| 
     @cashflows = Cashflow.where(user_id: current_user.id).joins(:category)
    @top_ten_cashflows = @cashflows.reorder('date DESC').limit(5)
   
end

  def index 
    @cashflows = current_user.cashflows
    @cashflow  = current_user.cashflows.build
    @categories = Category.all
    @parent = Category.roots
    
    respond_to do |format|
      format.html
      format.json { render json: CashflowDatatable.new(view_context,{ current_user: current_user}) }
      
    end
  end

  def show 
  end

  def new
    @parent = Category.roots
    @cashflow  = current_user.cashflows.build
    
  end

  def create
   
    @cashflow  = current_user.cashflows.build(cashflow_params)
    
    respond_to do |format|  

      if @cashflow.save
        format.html { redirect_to cashflows_path}
      
        format.json { render @cashflows, status: :success, :location => :index }
        format.js {render inline: "location.reload();" }
        @cashflow = current_user.cashflows.build  
    
      else
      
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
      
    



  end

  def cf_total_accounts
    result{}
    @casfhlow = Cashflow.all
  
  end

  # PATCH/PUT /cashflows/1
  # PATCH/PUT /cashflows/1.json
  def update
    if @cashflow.update(cashflow_params)
      redirect_to  cashflow_path(@cashflows)
    else
      render :edit
    end

  end

  # DELETE /cashflows/1
  # DELETE /cashflows/1.json
  def destroy
    @cashflow.destroy
    redirect_to cashflow_path, notice: 'Transcation successfully removed.' 
  end



    # Code for displaying category tree views. 
    def edit
        @cashflows = current_user.cashflow.all
     
    end
    



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashflow
      @cashflow = current_user.cashflows.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def cashflow_params
      params.require(:cashflow).permit(:id, :user_id, :date, :description, :amount, :category_id,:categories_attributes => [ :id,:parent_id, :name, :ancestry ])
    end     
end