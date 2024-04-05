module FavoritesHelper
  def fave_or_unfave_button(game, favorite)
    if favorite
      button_to "♡ Unfave", game_favorite_path(game, favorite), method: :delete
    else
      button_to "♥️ Fave", game_favorites_path(game)
    end
  end
end
