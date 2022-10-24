class EntryTypesController < ApplicationController
  before_action :set_entry_type, only: [:show, :edit, :update, :destroy]

  # GET /entry_types
  # GET /entry_types.json
  def index
    @entry_types =  @accounts = Plutus::Account.all
  end

  def new
   @entry_type = Plutus::Account.new
   @accounts = Plutus::Account.all
  end

  def create
    @name = params[:entry_type][:name]
    puts "**********#{params[:entry_type][:type]}***********"
    case params[:entry_type][:type]

      when "Asset" 
        puts "asset"
        #Plutus::Asset.create(:name=> @name)
        redirect_to entry_types_path
      when "Equity"
        puts "equity"
        #Plutus::Equity.create(:name=> @name)
        redirect_to entry_types_path
      when "Liability"
        puts "liabiality"
        #Plutus::Liability.create(:name=> @name)
        redirect_to entry_types_path
      when "Expense"
        puts "expense"
        #Plutus::Expense.create(:name=> @name)
        redirect_to entry_types_path
      when "Income"
        puts "income"
        #Plutus::Income.create(:name=> @name)
        redirect_to entry_types_path
    else    
      puts "non of the above"
      puts params[:entry_type][:type]
      redirect_to entry_types_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_type
      @entry_type = EntryType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_type_params
      params.require(:entry_type).permit(:id, :name, :type, :contra)
    end
end
