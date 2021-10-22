## Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

[![Elixir Badge](https://img.shields.io/badge/Elixir-4B275F?style=for-the-badge&logo=elixir&logoColor=white)](https://elixir-lang.org/docs.html)
[![postgresql Badge](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)

# NlwHeatElixir

Para rodar o projeto, execute os comandos abaixo:

- Instalar as dependências:
  ```bash
  $ mix deps.get
  ```
- Criar e migrar o banco de dados:
  ```bash
  $ mix ecto.setup
  ```
- Rodar o servidor:
  ```bash
  $ mix phx.server
  ```
  ou
  ```bash
  $  iex -S mix phx.server
  ```
- Rodar o teste:
  ```bash
  $ mix test
  ```
  Agora você pode acessar o projeto no seguinte endereço:
  [`http://localhost:4000`](http://localhost:4000)
  Não ira aparecer nenhuma menssagem, pois o servidor está rodando em background.
  Para ver algo visual acesse:
  [`http://localhost:4000/dashboard/`](http://localhost:4000/dashboard/)

Caso queira colocar em produção consulte o [guia de deploy](https://hexdocs.pm/phoenix/deployment.html)

## Aprenda mais

- [Site oficial](https://www.phoenixframework.org/)
- [Guias](https://hexdocs.pm/phoenix/overview.html)
- [Docs](https://hexdocs.pm/phoenix)
- [Forum](https://elixirforum.com/c/phoenix-forum)
- [Código](https://github.com/phoenixframework/phoenix)
