class CharactersController <ApplicationController

  def index
    @characters=Character.all
    render(:index)
  end

  def show

  end
  
end