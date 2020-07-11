class PhonesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def list_all
    @numbers = Phone.all.collect(&:mobile_number)
    render json: {Phone: @numbers}, status: :ok
  end

  def fancy_number

    if (params.has_key?(:id))
      number = params[:id]

      if number =~ /^[1-9]{1}\d{9}$/
        unless Phone.where(mobile_number: number).exists?
          @number = Phone.create(mobile_number: number)
        end
      end
    end
    render json: @number, status: :ok
  end

  def random_numbers
   
      generate_number = 10.times.map{rand(10)}.join

      if generate_number =~ /^[1-9]{1}\d{9}$/
        unless Phone.where(mobile_number: generate_number).exists?
          @number = Phone.create(mobile_number: generate_number)
        end
      end
    render json: @number, status: :ok
  end

end
