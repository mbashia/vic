defmodule VicWeb.VicLive.Index do
  use VicWeb, :live_view
  alias Vic.Processor
  alias Vic.Workers.ProcessorWorker

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("simulate", _params, socket) do
    %{}
    |> ProcessorWorker.new()
    |> Oban.insert()

    {:noreply,
     socket
     |> put_flash(:info, "done...")}
  end
end
