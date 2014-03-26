class AliensController <ApplicationController

    def index
    @spaceship = Spaceship.find(params[:spaceship_id])
    @aliens = @spaceship.aliens.all
    render(:index)
    end

    def new
      @spaceship=Spaceship.find(params[:spaceship_id])
      render(:new)
    end

    def show
      @alien= Alien.find(params[:id])
      ender(:show)
    end

    def create
      Alien.create({name: params[:name], origin: params[:origin], organic_composition: params[:organic_composition], vulnerabilities: params[:vulnerabilities], strength: params[:strength], spaceship_id: params[:spaceship_id]
        })
    redirect_to("/spaceships/<%spaceship_id%>/aliens/<%id%>")
    end
end