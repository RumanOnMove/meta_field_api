module MetaFieldApi
  class MetaFieldsController < ApplicationController
    def index
      meta_fields = MetaField::all
      render json: {meta_fields: meta_fields}, status: :ok
    end

    def show
    end

    def create
      meta_field = MetaField.new(meta_field_params)
      if meta_field.save
        render json: {meta_field: meta_field}, status: :created
      else
        render json: {error: meta_field.errors.full_messages}, status: :unprocessable_entity
      end
    end

    def update
    end

    def destroy
    end

    # Customize MetaField params
    def meta_field_params
      params.permit(:owner_id, :meta_type, :meta_attributes)
    end
  end
end
