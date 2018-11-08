defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    send_resp(conn, 200, "Hello world with MIX_ENV=#{Mix.env()}")
  end

  def healthy(conn, _params) do
    send_resp(conn, 200, "")
  end
end
