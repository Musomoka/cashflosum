JournalBatches  < ActiveRecord::Base
    def self.to_csv
        attributes = %w(ref account contra amount description )
    
        CSV.generate( headers: true) do |csv|
            csv << attributes

            all.each do |JournalBatches|
                
            end
        end
    
    end


    

    private
        
end
