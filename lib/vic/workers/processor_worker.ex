defmodule Vic.Workers.ProcessorWorker do
  use Oban.Worker, queue: :default


  alias Vic.Emails

  def perform(job) do
    IO.puts("starting work")
    IO.inspect(job)
    send_email()
    IO.write("finished work")
  end

  defp send_email do
    # Logic to send an email
    Emails.tester_email()
  end
end
