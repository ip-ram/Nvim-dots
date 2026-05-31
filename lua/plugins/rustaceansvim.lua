return {
  "mrcjkb/rustaceanvim",
  version = "^5",
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        handlers = {
          -- Возвращаем системные уведомления, если они нужны (или оставьте пустую функцию, если мешают поп-апы)
          ["window/showMessage"] = function(_, result, _, _)
            vim.lsp.handlers["window/showMessage"](_, result, _, _)
          end,
        },
        default_settings = {
          ["rust-analyzer"] = {
            -- 1. ВКЛЮЧАЕМ диагностику обратно
            diagnostics = {
              enable = true,
              -- Отключаем конкретные предупреждения самого rust-analyzer
              disabled = { "unused_variables", "dead_code", "unused_imports", "unresolved_proc_macro" },
            },
            -- 2. Фильтруем фоновый cargo check, разрешая компиляцию с неиспользуемым кодом
            check = {
              command = "clippy", -- или "check", если clippy не установлен
              extraArgs = { "--", "-A", "dead_code", "-A", "unused_variables", "-A", "unused_imports" },
            },
          },
        },
      },
    }
  end,
}
