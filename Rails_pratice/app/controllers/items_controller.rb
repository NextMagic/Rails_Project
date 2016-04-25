class ItemsController < ApplicationController
  before_action :hihi
  def yoo
    @item = 'ruwjrojogrjwtojrtoiwejt'
    redirect_to :action => :hoo
  end
  def hoo
    @item = 234
  end
  private
  def hihi
    @yoo = 'kitty'
  end 
end

