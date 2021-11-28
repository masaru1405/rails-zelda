class ZeldaInfoController < ApplicationController

  def index

  end

  def search
    @data = find_game(params[:game_name])

    unless @data
      flash[:alert] = 'Game not found'
      return render action: :index
    end
  end

  private
    HOST = 'the-legend-of-zelda.p.rapidapi.com'
    KEY = 'ef82b5f565mshb1f3e7c107c8b16p1c054ajsnc200ecd48fb7'
    URL = 'https://the-legend-of-zelda.p.rapidapi.com/games'

  
    def find_game(name)
      url = URL + "?name=#{name}"

      response = Excon.get(
        url,
        :headers => {'X-RapidAPI-Host' => HOST, 'X-RapidAPI-Key' => KEY}
      )

      return nil if response.status != 200

      JSON.parse(response.body)  
    end

end
