# frozen_string_literal: true

module GamesHelper
  def total_gross(game)
    if game.npc?
      'Whom ever made this game is an NPC'
    else
      number_to_currency(game.total_gross, precision: 0)
    end
  end

  def year_of(game)
    game.released_on.year
  end

  def average_stars(game)
    if game.average_stars.zero?
      content_tag(:strong, "No reviews")
    else
      "*" * game.average_stars.round
    end
  end

  def nav_link_to(text, url)
    if current_page?(url)
      link_to(text, url, class: "active")
    else
      link_to(text, url)
    end
  end

  def main_image(game)
    if game.main_image.attached?
      image_tag(game.main_image)
    else
      image_tag("placeholder.jpg")
    end
  end
end
