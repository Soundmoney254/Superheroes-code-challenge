class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :handle_validation_error

  def index
    powers = Power.all
    render json: powers
  end

  def show
    power = Power.find_by(id: params[:id])

    if power
      render json: power
    else
      render json: { error: 'Power not found' }, status: :not_found
    end
  end

  def update
    power = Power.find_by(id: params[:id])
  
    if power
      if power.update(power_params)
        render json: power, status: :ok
      else
        render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Power not found' }, status: :not_found
    end
  rescue ActionController::ParameterMissing => e
    render json: { errors: ['validation errors'] }, status: :unprocessable_entity
  end

  private

  def power_params
    params.require(:power).permit(:description)
  end

  def handle_not_found
    render json: { error: 'Power not found' }, status: :not_found
  end

  def handle_validation_error(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
