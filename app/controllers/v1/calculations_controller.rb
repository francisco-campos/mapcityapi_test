require 'calculate'
class V1::CalculationsController < ApplicationController
  before_action :set_number, only: [:fibonacci, :sequence_fibonacci, :factorial]

  def fibonacci
    render json: @calc.calc_fibonacci(@number.to_i)
  end

  def sequence_fibonacci
    render json: @calc.sequence_fibonacci(@number.to_i)
  end

  def factorial
    render json: @calc.factorial(@number.to_i)
  end

  private
    def set_number
      @number = params[:number]
      @calc = Calculate.new
    end

end
