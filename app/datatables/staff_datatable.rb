class StaffDatatable < AjaxDatatablesRails::Base

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
       id:        { source: "id.name", cond: :eq },
       name:        { source: "Staff.name", cond: :like },
       job_title:   { source: "Staff.job_title", cond: :like },
       bio:         { source: "Staff.bio", cond: :like },
        avatar:         { source: "avatar.bio", cond: :like },
       created_at:  { source: "created_at.bio", cond: :like },
       updated_at:  { source: "updated_at.bio", cond: :like },
    
    }
  end

  def data
    records.map do |record|
      {
        id:         record.id,
        name:       record.name, 
        job_title:  record.job_title,
        bio:        record.bio,
        avatar:     record.avatar,
        created_at: record.created_at,
        updated_at: record.updated_at
        

      }
    end
  end

  private

  def get_raw_records
    Staff.all
    # insert query here
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
