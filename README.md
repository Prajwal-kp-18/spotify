# Terraform Spotify Playlist Automation

## Project Overview

This project automates the creation and management of multiple Spotify playlists using Terraform. It utilizes the Spotify API to interact with your Spotify account and create playlists tailored for different occasions such as morning, evening, party night, etc.

## Prerequisites

Before starting, make sure you have the following:

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (free tier is sufficient).
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **VS Code Editor**: Recommended for editing Terraform files.

## Steps to Complete the Project

### 1. Set Up Terraform Project

1. Create a new directory for your Terraform project and navigate to it in your terminal.
2. Create a file named `main.tf`.

### 2. Define Spotify Provider

In `main.tf`, define the Spotify provider:

```hcl
provider "spotify" {
  api_key = var.spotify_api_key
}
```

### 3. Obtain Spotify API Credentials

To interact with Spotify's API, you need to create a Spotify Developer App:

- Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
- Log in with your Spotify account.
- Click on "Create an App" and fill in the required details.
- Note down the `Client ID` and `Client Secret`.

### 4. Store Credentials Securely

Create a `.env` file to store your Spotify application's Client ID and Secret:

```plaintext
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>
```

### 5. Start Spotify Authorization Proxy

Ensure Docker Desktop is running, then start the authorization proxy server:

```bash
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
```

### 6. Initialize and Apply Terraform Configuration

1. Initialize the Terraform configuration:

```bash
terraform init
```

2. Apply the Terraform configuration:

```bash
terraform apply
```

### 7. Verify Playlists on Spotify

After applying the Terraform configuration, log in to your Spotify account and verify that the playlists have been created and populated with the specified tracks.

## Conclusion

Automating Spotify playlist management with Terraform streamlines the process of creating and maintaining playlists for various occasions. Customize the playlists and tracks according to your preferences to enhance your music listening experience.
