defmodule VicWeb.PageController do
  use VicWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
