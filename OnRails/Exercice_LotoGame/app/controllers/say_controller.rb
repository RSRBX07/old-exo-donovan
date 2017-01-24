class SayController < ApplicationController
  def hello
    @time = DateTime.now
  end

  def goodbye
  end
end
