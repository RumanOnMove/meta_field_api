module MetaFieldApi
  class MetafieldsController < ApplicationController
    # List of all metafields
    def index
      # Get the filter parameters from the params hash
      owner_type = params[:owner_type].presence
      owner_id = params[:owner_id].presence
      key = params[:key].presence
      namespace = params[:namespace].presence

      metafields = Metafield.filter_by(owner_type, owner_id, key, namespace)
      render json: { metafields: metafields, message: 'Metafields retrieved successfully!' }, status: :ok
    end

    # Store metafields
    def create
      metafield = Metafield.new(metafield_params)

      if metafield.save
        render json: { metafield: metafield, message: 'Metafield created successfully!' }, status: :created
      else
        render json: { error: metafield.errors }, status: :unprocessable_entity
        end
    rescue StandardError => e
      render json: { error: e.message }, status: :unprocessable_entity
    end

    # Show specific metafield
    def show
      metafield = Metafield.find_by(id: params[:id])

      if metafield
        render json: { metafield: metafield, message: 'Metafield retrieved successfully!' }, status: :ok
      else
        render json: { message: 'Metafield not found' }, status: :not_found
      end
    end

    # Update specific metafield
    def update
      metafield = Metafield.find_by(id: params[:id])

      if metafield.update(metafield_params)
        render json: { metafield: metafield, message: 'Metafield updated successfully!' }, status: :ok
      else
        render json: { error: metafield.errors }, status: :unprocessable_entity
      end
    rescue StandardError => e
      render json: { error: e.message }
    end

    def destroy
      metafield = Metafield.find_by(id: params[:id])

      if metafield&.destroy
        render json: { message: 'Metafield deleted successfully!' }, status: :ok
      else
        render json: { error: 'Metafield not found or could not be deleted' }, status: :unprocessable_entity
      end
    end

    private

    # Metafield params
    def metafield_params
      params.permit(:namespace, :key, :value, :description, :my_type, :owner_type, :owner_id)
    end
  end
end
