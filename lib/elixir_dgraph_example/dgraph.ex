defmodule ElixirDgraphExample.Dgraph do
  @query """
  {
    everyone(func: anyofterms(name, "Postgres")) {
      name
      author {
        displayName
        klout
      }
    }
  }
  """

  def sample do
    conn = ExDgraph.conn()
    {:ok, msg} = ExDgraph.query(conn, @query)
  end
end
