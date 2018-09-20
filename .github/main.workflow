workflow "go-serverless" {
  on = "push"
  resolves = ["ls"]
}

action "serverless" {
  uses = "wintron/serverless@master"
}

action "ls" {
  needs = ["serverless"]
  uses = "wintron/command@master"
  args = ["ls", "-ltrRa", "/github", "/home"]
}
