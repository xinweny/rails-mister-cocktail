module CocktailsHelper
  def card_background_path(cocktail)
    if cocktail.image.present?
      cocktail.image
    else
      image_url 'default_cocktail.jpg'
    end
  end
end
