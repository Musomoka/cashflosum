class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  
  # GET /expenses
  # GET /expenses.json
  
  def dashboard
     @expenses = current_user.expenses
  end

  def index

   

    respond_to do  |format|

      format.html 

      format.json  do 
        render json: ExpenseDatatable.new(view_context)
      end
   
    end

    #@expense =current_user.expenses.build
  end

   
  
    
    
    
  

  # GET /expenses/new
  def new
    @expense  = current_user.expenses.build
    
  end

  # GET /expenses/1/edit
  def edit

  end

  # POST /expenses.json
  # POST /expenses.json
  def create

    @expense  = current_user.expenses.create(expense_params)    

    if @expense.save(expense_params)

      redirect_to expenses_path(@expenses)
    else
      render :new

    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    if @expense.update(expense_params)


    redirect_to expenses_path(@expenses)
    else
      render :edit
    end

  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy

    redirect_to expenses_url, notice: 'Address book was successfully destroyed.' 
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense

      @expense = current_user.expenses.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_params
      params.require(:expense).permit(:id, :user_id, :Date, :AccountName, :Description, :amount)
    end
end

