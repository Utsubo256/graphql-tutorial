module Mutations
  class CreateLink < BaseMutation
    field :link, Types::LinkType, null: false

    argument :description, String, required: true
    argument :url, String, required: true

    # def resolve(description: nil, url: nil)
    def resolve(**args)
      link = Link.create!(args)
      {
        link: link
      }
    end
  end
end
