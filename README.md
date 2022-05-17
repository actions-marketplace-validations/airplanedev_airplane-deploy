# Airplane deploy

A GitHub Action that deploys all Airplane tasks in a repo ✈️

## Usage

Create a file named `.github/workflows/airplane.yml` with the following content and then push it to the `main` branch. Every subsequent push to `main` will deploy all Airplane tasks nested under `task-directory`. Tasks that are not changed will not be deployed.

```yaml
name: airplane
on:
  push:
    branches:
      # Or "master"
      - main
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: airplanedev/airplane-deploy@v1
        with:
          # Generate a new API key from the CLI by running `airplane apikeys create <key name>`.
          # Add your API key as a secret: https://docs.github.com/en/actions/security-guides/encrypted-secrets
          api-key: ${{ secrets.AIRPLANE_API_KEY }}
          # Find this at https://app.airplane.dev/settings/team
          team-id: <your_team_id>
```

## Inputs

| Name             | Requirement  | Default | Description                                                                                                                                                                     |
| ---------------- | ------------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `api-key`        | **required** |         | An airplane API key. Generate by running `airplane apikeys create <key name>` from the [Airplane CLI](https://docs.airplane.dev/platform/airplane-cli)                          |
| `team-id`        | **required** |         | Your airplane team ID. Find this in your [team settings](https://app.airplane.dev/settings/team)                                                                                |
| `task-directory` | _optional_   | `./`    | The relative path from your GitHub repo root where your airplane tasks live. Setting this will speed up your deploy if your repo contains many files that aren't airplane tasks |
| `env`            | _optional_   |         | The environment you want to deploy the tasks into. Defaults to your default environment.                                                                                        |
