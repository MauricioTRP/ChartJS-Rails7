class HomeController < ApplicationController
  def index
    @data_keys = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio'
    ]

    @data_values = [0,10,5,2,20,30,45]
  end
end
