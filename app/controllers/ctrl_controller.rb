class CtrlController < ApplicationController
  def req_head2
  	@headers = request.headers
  end
end
