return {
  {
    "ludovicchabant/vim-gutentags",
    init = function()
      -- 讓 gutentags 知道在哪些目錄下啟動（尋找這些檔案作為根目錄）
      vim.g.gutentags_add_default_project_roots = 0
      vim.g.gutentags_project_root = { ".root" }

      -- 將產生的 tags 檔案統一放在快取目錄，不要污染你的專案原始碼目錄
      vim.g.gutentags_cache_dir = vim.fn.stdpath("cache") .. "/ctags"

      -- 確保目錄存在
      if vim.fn.isdirectory(vim.g.gutentags_cache_dir) == 0 then
        vim.fn.mkdir(vim.g.gutentags_cache_dir, "p")
      end

      -- 配置 ctags 的參數
      vim.g.gutentags_ctags_extra_args = {
        "--fields=+niazS",
        "--extra=+q",
        "--c++-kinds=+px",
        "--c-kinds=+px",
        -- 針對 eWDK/Windows 語法優化
        "--langmap=c:.c.h.inf.dec",
      }
    end,
  },
}
