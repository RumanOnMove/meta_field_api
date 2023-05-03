module MetaFieldApi
  class MetafieldsController < ApplicationController
    def index
      metafields = Metafield.all
      render json: metafields, status: :ok
    end
    def create
      metafield = Metafield.new(metafield_params)
      if metafield.save
        render json: metafield, status: :created
      else
        render json: metafield.errors, status: :unprocessable_entity
      end
    end

    def show
      #
    end

    def update
      #
    end

    def destroy
      #
    end

    private

    def metafield_params
      params.permit(:namespace, :key, :value, :description, :owner_type, :owner_id)
    end
  end
end
