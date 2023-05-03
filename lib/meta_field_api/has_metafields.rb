module MetaFieldApi
  module HasMetafields
    extend ActiveSupport::Concern

    included do
      has_many :metafields, as: :owner, class_name: "MetaFieldApi::Metafield"
      def as_json(options = {})
        super(options.merge(include: :metafields))
      end
    end
  end
end