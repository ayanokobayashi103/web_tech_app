module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :blog, [BlogType], null: false,
    description: "Returns all blog"
    def blog
      [Blog.first]
    end

    # field :blog, !Types::BlogType do
    #   resolve ->(_obj, _args, ctx) {
    #     ctx[:blog]
    #   }
    # end
  end
end
