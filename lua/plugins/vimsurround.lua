return {
  "kylechui/nvim-surround",
  version = "*", -- Рекомендуется для стабильности
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      move_cursor = false, -- Опционально: не двигать курсор после обертывания
    })
  end,
  keys = {
    -- Назначаем наше безопасное сочетание на функцию визуального режима
    { "gs", "<cmd>lua require('nvim-surround').visual_surround()<CR>", mode = "x", desc = "Surround selection" },
  },
}
