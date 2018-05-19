defmodule CoachMessagesWeb.PageController do
  use CoachMessagesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
