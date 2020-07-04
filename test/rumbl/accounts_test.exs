defmodule Rumbl.AccountsTest do
  use Rumbl.DataCase, async: true

  alias Rumbl.Accounts
  alias Rumbl.Accounts.User


  describe "register_user/1" do
    @valid_attrs %{
      name: "User",
      username: "eva",
      password: "secret"
    }
    @invalid_attrs %{}
  end

end
