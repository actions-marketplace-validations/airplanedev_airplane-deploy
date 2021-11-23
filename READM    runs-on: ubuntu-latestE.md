# Airplane deploy
Deploy all airplane tasks in a repo ✈️

## Usage
1. Create a folder in the root level of your repo `.github/workflows` (if one does not already exist).
2. Add a new `workflow` file named `airplane.yml`
3. Copy and paste the following to deploy all airplane tasks in your repo every time you push or merge to your `main` branch:

```yaml
name: airplane deploy
on:
  push:
    branches:
      # Or "master"
      - main
jobs:
  deploy-tasks:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v1
      - name: Deploy Airplane Tasks
        uses: airplanedev/airplane-deploy@v1
        with:
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
