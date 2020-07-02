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

    def get_user_by(params) do
        Repo.get_by!(User, params)
    end

    def list_users do
        Repo.all(User)
    end

    def change_user(%User{} = user) do
        User.changeset(user, %{})
    end

    # If we want a default value for an argument we use the argument \\ value syntax
    def create_user(attrs \\ %{}) do
        %User{}
        |> User.changeset(attrs)
        |> Repo.insert()
    end

    def change_registration(%User{} = user, params) do
        User.registration_changeset(user, params)
    end

    def register_user(attrs \\ %{}) do
        %User{}
        |> User.registration_changeset(attrs)
        |> Repo.insert()
    end

end
