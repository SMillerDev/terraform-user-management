variable "teams" {
  type = object({
    plc      = list(string)
    security = list(string)
    bots     = list(string)
    maintainers = object({
      cask            = list(string)
      brew            = list(string)
      core            = list(string)
      tsc             = list(string)
      ops             = list(string)
      formulae-web    = list(string)
      ci-orchestrator = list(string)
    })
    taps = object({
      bundle      = list(string)
      pip         = list(string)
      linux-fonts = list(string)
      services    = list(string)
    })
  })
}

variable "github_admins" {
  type = list(string)
}

variable "email_overrides" {
  type    = map(string)
  default = {}
}