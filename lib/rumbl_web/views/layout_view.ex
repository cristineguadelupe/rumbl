defmodule RumblWeb.LayoutView do
  use RumblWeb, :view

  def first_letters(user) do
    String.slice(user.name, 0..1)
  end

end
