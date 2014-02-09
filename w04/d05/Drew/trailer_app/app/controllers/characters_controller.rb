class CharactersController <ApplicationController

  def index
    @characters=Character.all
    render(:index)
  end


end