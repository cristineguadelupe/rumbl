defmodule Rumbl.Accounts do
    @moduledoc """
    The accounts context
    """
    alias Rumbl.Repo
    alias Rumbl.Accounts.User

    def get_user(id) do
        Repo.get(User, id)
    end

    def get_user!(id) do
        Repo.get!(User, id)
    end

end
