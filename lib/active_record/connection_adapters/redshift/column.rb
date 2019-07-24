module ActiveRecord
  module ConnectionAdapters
    module Redshift
      class Column < ConnectionAdapters::PostgreSQLColumn
        delegate :encoding, to: :sql_type_metadata
      end
    end
    RedshiftColumn = Redshift::Column
  end
end
