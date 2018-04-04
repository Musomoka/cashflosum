class ExpenseDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
        id:           {source: "Expense.id"},
        Date:         {source: "Expense.Date", cond: :eq},
        AccountName:  {source: "Expense.AccountName", cond: :like },
        Description:  {source: "Expense.Description", cond: :like },
      
        created_at:   {source: "Expense.created_at", cond: :eq },
        updated_at:   {source: "Expense.updated_at", cond: :eq },
        user_id:      {source: "Expense.user_id", cond: :eq },
        category_id:  {source: "Expense.category_id", cond: :eq },
        amount:       {source: "Expense.amount", cond: :eq },
       
    }
  end

  def data

    records.map do |record|

      {
        id: record.id,
        Date: record.Date, 
        AccountName: record.AccountName,
        Description: record.Description,
        created_at: record.created_at,
        updated_at: record.updated_at, 
        user_id: record.user_id,
        category_id: record.category_id,
        amount: record.amount,
    }
        #"id", "Date", "AccountName", "Description", "created_at", "updated_at", "user_id", "category_id", "amount"]
        # id: record.id,
        # name: record.name
      
    end
  end

  private

  def get_raw_records   
    
   Expense.joins(:user)

  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end
