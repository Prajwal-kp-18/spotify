resource "spotify_playlist" "tearraform" {
  name = "Tearraform"
  tracks = ["2plbrEY59IikOBgBGLjaoe", "0VjIjW4GlUZAMYd2vXMi3b"]
}

data "spotify_search_track" "Eminem" {
  artist = "Eminem"
  limit = 10
}

resource "spotify_playlist" "From_Eminem" {
  name = "From Eminem"
  tracks = data.spotify_search_track.Eminem.tracks[*].id
}

