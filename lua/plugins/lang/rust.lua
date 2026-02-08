return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          check = {
            allTargets = false,
            command = "clippy",
            extraArgs = {
              "--",
              "-Wclippy::pedantic",
            },
          },
        },
      },
    },
  },
}
