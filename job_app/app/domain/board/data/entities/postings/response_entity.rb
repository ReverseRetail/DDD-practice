require 'dry-struct'
require 'dry-types'

module Types
  include Dry.Types()
end

module Board
  module Data
    module Entities
      module Postings
        class ResponseEntity < Dry::Struct
          attribute :id, Types::Strict::Integer
          attribute :title, Types::Strict::String
          attribute :description, Types::Optional::String
          attribute :qualifications, Types::Strict::String
          attribute :benefits, Types::Optional::String
        end
      end
    end
  end
end