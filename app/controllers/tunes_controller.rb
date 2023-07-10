class TunesController < ApplicationController
  def index
    @tunes = Tune.all
    render template: "tunes/index"
  end

  def show
    @tune = Tune.find_by(id: params["id"])
    render :show
  end

  def create
    @tune = Tune.create(
      title: params["title"],
      album: params["album"],
      artist: params["artist"],
      year: params["year"],
    )
    render :show
  end

  def update
    @tune = Tune.find_by(id: params["id"])
    @tune.update(
      title: params["title"] || @tune.title,
      album: params["album"] || @tune.album,
      artist: params["artist"] || @tune.artist,
      year: params["year"] || @tune.year,
    )
    render :show
  end

  def destroy
    @tune = Tune.find_by(id: params["id"])
    @tune.destroy

    render json: { message: "Entry has been deleted." }
  end
end
