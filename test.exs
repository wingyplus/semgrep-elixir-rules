Mix.install([{:dagger, "0.8.2"}])
# Mix.install([{:dagger, "~> 0.8.4"}])

client = Dagger.connect!()

src = client |> Dagger.Client.host() |> Dagger.Host.directory(".")

client
|> Dagger.Client.container()
|> Dagger.Container.from("returntocorp/semgrep")
|> Dagger.Container.with_mounted_directory("/src", src)
|> Dagger.Container.with_workdir("/src")
|> Dagger.Container.with_exec(~w[semgrep --metrics=off --test rules])
|> Dagger.Sync.sync()

Dagger.close(client)
