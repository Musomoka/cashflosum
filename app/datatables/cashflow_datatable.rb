class CashflowDatatable < AjaxDatatablesRails::Base
  def user
    @user ||= options[:user]
  end
  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }

      date: { source: 'Cashflow.date', cond: :like, searchable: true},
      description: { source: 'Cashflow.description', cond: :like },
      amount: { source: 'Cashflow.amount', cond: :eq, searchable: true},
      created_at:{ source: 'Cashflow.created_at', cond: :eq },
      updated_at: { source: 'Cashflow.updated_at', cond: :eq },
      user_id: { source: 'Cashflow.user_id', cond: :eq },
      category: { source: 'Cashflow.category.name',cond: :eq,
                searchable: true },
      name:         { source: 'Category.name', cond: :eq,
                    searchable: true }
    }
  end



  def data

    records.map do |record|

      {

        date: record.date, 
        description: record.description,
        created_at: record.created_at,
        updated_at: record.updated_at, 
        user_id: record.user_id,
        name: record.category.name,
        amount: record.amount,
    }
        
    end
  end

  private

  def get_raw_records   
    
    Cashflow.where(user_id: options[:current_user].id).joins(:category)
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

   def filter_records(records)
    ->(column) { column.table[column.field].eq(column.search.value.to_i + 1) }
  end

  # def sort_records(records) 
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end

