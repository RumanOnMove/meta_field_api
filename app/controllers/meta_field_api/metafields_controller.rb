module MetaFieldApi
  class MetafieldsController < ApplicationController
    # List of all metafields
    def index
      metafields = Metafield.all
      render json: metafields, status: :ok
    end

    # Store metafields
    def create
      metafield = Metafield.new(metafield_params)
      if metafield.save
        render json: metafield, status: :created
      else
        render json: metafield.errors, status: :unprocessable_entity
      end
    end

    # Show single metafield
    def show
      #
    end

    # Updating met
    def update
      #
    end

    def destroy
      #
    end

    private

    def metafield_params
      params.permit(:namespace, :key, :value, :description, :my_type, :owner_type, :owner_id)
    end
  end
end
