-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Importa el pack de C# (LSP, resaltado y depuración básica)
  { import = "astrocommunity.pack.cs" },      -- Habilitado para .NET / Avalonia
  -- { import = "astrocommunity.pack.java" },    -- Comentado si no usas Java
  -- { import = "astrocommunity.pack.php" },     -- Comentado si no usas PHP
  -- import/override with your plugins folder

  { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.pack.tailwindcss" }, -- Comentado si no usas Tailwind
}
