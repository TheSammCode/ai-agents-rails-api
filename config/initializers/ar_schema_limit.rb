# # config/initializers/ar_schema_limit.rb
# ActiveSupport.on_load(:active_record) do
#   # Limita el tamaño por defecto de los strings en los índices de Rails
#   # para que no superen los 1000 bytes en MySQL antiguos.
#   ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter.default_index_size = 191
# end
