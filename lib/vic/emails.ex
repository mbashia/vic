defmodule Vic.Emails do
  import Swoosh.Email

  alias Vic.Mailer


  # Delivers the email using the application mailer.
  defp deliver(recipient, subject, body) do
    email =
      new()
      |> to(recipient)
      |> from({"SportOdds", "v.mbashia@gs1kenya.org"})
      |> subject(subject)
      |> text_body(body)

    with {:ok, _metadata} <- Mailer.deliver(email) do
      {:ok, email}
    end
  end

  @doc """
  Deliver instructions to confirm account.
  """
  def tester_email() do
    deliver("mbashiavictor@gmail.com", "Confirmation instructions", """

    ==============================

    hi this is a tester email please ignore if you did not request one

    ==============================
    """)
  end
end
