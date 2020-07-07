defmodule RumblWeb.VideoView do
  use RumblWeb, :view

  import Inflex

  def category_select_options(categories) do
    for category <- categories, do: {category.name, category.id}
  end

  def number_of_annotations(video) do
    annotations = length(video.annotations)
    inflect = inflect("annotations", annotations)
    "#{annotations} #{inflect}"
  end

end
