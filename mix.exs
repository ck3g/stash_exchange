defmodule StashExchange.MixProject do
  use Mix.Project

  def project do
    [
      app: :stash_exchange,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "StashExchange",
      description: "The single value storage",
      source_url: github_link(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: "stash_exchange", # Optional if we want to keep OTP app name
      maintainers: ["Vitali Tatarintev"],
      licenses: ["MIT"],
      links: %{"GitHub" => github_link()}
    ]
  end

  defp github_link() do
    "https://github.com/ck3g/stash_exchange"
  end
end
