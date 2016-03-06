# Use this hook to configure impressionist parameters
#include Mongoid::Attributes::Dynamic
Impressionist.setup do |config|
  # Define ORM. Could be :active_record (default), :mongo_mapper or :mongoid
  config.orm = :mongoid
end


#Impressionist.orm = :mongoid
