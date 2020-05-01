provider "google" {
    credentials = "${file("seeed-labs-268c936e413c.json")}"
    project =  "seeed-labs"
    region = "us-central1"
    zone = "us-central1-c"
}
