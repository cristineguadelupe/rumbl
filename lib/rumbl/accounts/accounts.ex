defmodule Rumbl.Accounts do 
    @moduledod """
    The accounts context
    """

    alias Rumbl.Accounts.User

    def list_users do
        [
            %User{id: "1", name: "José", username: "josevalim"},
            %User{id: "2", name: "Bruce", username: "redrapis"},
            %User{id: "3", name: "Chris", username: "chrismcord"}
        ]
    end

    def get_user(id) do
        Enum.fin(list_users(), fn map -> map.id == id end)
    end
end
