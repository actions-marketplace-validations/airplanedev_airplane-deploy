# Airplane deploy
A GitHub Action that deploys all Airplane tasks in a repo ✈️

## Usage

Create a file called `.github/workflows/airplane.yml` with the following contents and then push that to the `main` branch. Every subsequent push to the `main` branch will now deploy all Airplane tasks in the repo.

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
      - uses: actions/checkout@v3
      - uses: airplanedev/airplane-deploy@v1
        with:
          # Generate a new API key from the CLI by running `airplane apikeys create <key name>`.
          # Add your API key as a secret: https://docs.github.com/en/actions/security-guides/encrypted-secrets
          api-key: ${{ secrets.AIRPLANE_API_KEY }}
          # Find this at https://app.airplane.dev/settings/team
          team-id: <your_team_id>
```

## Inputs

| Name          | Requirement | Default | Description |
| ------------- | ----------- | ------- | ----------- |
| `api-key`     | **required**  | | An airplane API key. Generate by running `airplane apikeys create <key name>` from the [Airplane CLI](https://docs.airplane.dev/platform/airplane-cli)|
| `team-id`  | **required**  | | Your airplane team ID. Find this in your [team settings](https://app.airplane.dev/settings/team)  |
| `task-directory`   | _optional_  | `./` | The relative path from your GitHub repo root where your airplane tasks live. Setting this will speed up your deploy if your repo contains many files that aren't airplane tasks |
