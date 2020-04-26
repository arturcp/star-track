# StarTrack

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## CORS

In the local environment, if you try to access the URL the from Star Track Web
project, you may receive this error:

```
Access to XMLHttpRequest at 'http://localhost:4000/characters' from origin 'http://localhost:3000' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource.
```

To solve that, this API needs to configure CORS. For a more detailed reference,
check [this article](https://medium.com/@yagoazedias/how-to-configure-cors-in-your-phoenix-application-5ef0234bc25f) and [this git repository](https://github.com/mschae/cors_plug).

## Deploy

We use Gigalixir as our host. To learn how to deploy to Gigalixir, follow these
instrutions:

https://elixircasts.io/deploying-with-gigalixir

We are using [Distillery](https://github.com/bitwalker/distillery) to deploy the
project.
