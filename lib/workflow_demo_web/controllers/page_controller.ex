defmodule WorkflowDemoWeb.PageController do
  use WorkflowDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
