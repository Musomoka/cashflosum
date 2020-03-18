class EntryTypesController < ApplicationController
  before_action :set_entry_type, only: [:show, :edit, :update, :destroy]

  # GET /entry_types
  # GET /entry_types.json
  def index
    @entry_types = EntryType.all
  end

  def new
   @entry_type = Plutus::Account.new
   @accounts = Plutus::Account.all
  end

  def create
    @name = params[:entry_type][:name]
    puts params[:entry_type][:default_acc]
    case params[:entry_type][:default_acc]

    when "Asset" 
      puts "asset"
      #Plutus::Asset.create(:name=> @name)
    when "Equity"
      puts "equity"
      #Plutus::Equity.create(:name=> @name)
    when "Liability"
      puts "liabiality"
      #Plutus::Liability.create(:name=> @name)
    when "Expense"
      puts "expense"
      #Plutus::Expense.create(:name=> @name)
    when "Income"
      puts "income"
      #Plutus::Income.create(:name=> @name)
 
    else    
      puts "non of the above"
    end
    
      

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_type
      @entry_type = EntryType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_type_params
      params.require(:entry_type).permit(:name, :default_acc, :fixed_entry_type)
    end
end
