class SpaceshipsController <ApplicationController

  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    render(:show)
  end

  def new
    render(:new)
  end

  def create
    Spaceship.create({
        name: params[:name], capacity: params[:capacity], origin: params[:origin], photo_url: params[:photo_url], purpose: params[:purpose]
          })
    redirect_to("/spaceships")
  end

end




