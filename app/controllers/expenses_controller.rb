class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  
  def dashboard
     @expenses = current_user.expenses
  end

  def index
    @expense =current_user.expenses.build
   

    respond_to do  |format|

      format.html 

      format.json  do 
        render json: ExpenseDatatable.new(view_context)
      end
   
    end

    
  end

    
   # category  grab root categories

  
  

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

      redirect_to expenses_path(@expenses),notice: 'expense successfully saved'
    else
      render :new , notice: 'Error: expense was not created'

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



    # Code for displaying category tree views. 
    def edit
      @categories = collection_for_parent_select
    end
    

    def collection_for_parent_select
      @categories = ancestry_options(Category.unscoped.arrange(:order => 'name')) {|i| "#{'-' * i.depth} #{i.name}" }
    end

    def ancestry_options(items)
      result = []
      items.map do |item, sub_items|
        result << [yield(item), item.id]
        #this is a recursive call:
        result += ancestry_options(sub_items) {|i| "#{'-' * i.depth} #{i.name}" }
      end
      result
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

     #def categories_params
      #params.require(:categories).permit(:name, :parent_id, :ancestry)
  #  end
end

