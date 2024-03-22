module Board
  module Operations
    module Mappers
      module Postings
        class ResponseMapper
          include Data::Entities::Postings

          def map_to_response(posting)
            ResponseEntity.new(
              id: posting.id,
              title: 1.to_s,
              description: nil,
              qualifications: posting.qualifications,
              benefits: posting.benefits
            )
          end

          def map_all_to_response(postings)
            response = []
            postings.each do |posting|
              response << map_to_response(posting)
            end
            response
          end
        end
      end
    end
  end
end
