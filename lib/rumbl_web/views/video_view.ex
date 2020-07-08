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

  def video_status_class(video) do
    status = video.status
    cond do
      status == "Unwatched" ->
        "text-red-900"
      status == "Review" ->
        "text-orange-700"
      status == "Done" ->
        "text-teal-700"
    end
  end

end
