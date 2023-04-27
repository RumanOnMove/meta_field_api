module MetaFieldApi
  class MetaFieldsController < ApplicationController
    def index
      meta_fields = MetaField::all
      render json: {meta_data: meta_fields}, status: :ok
    end

    def show
    end

    def create
    end

    def update
    end

    def destroy
    end
  end
end
