-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- Importa el pack de C# (LSP, resaltado y depuración básica)
  { import = "astrocommunity.pack.cs" },      -- Habilitado para .NET / Avalonia
  
  -- ==== Soporte para Desarrollo Web ====
  { import = "astrocommunity.pack.html-css" }, -- Habilitado para maquetación web básica
  -- { import = "astrocommunity.pack.tailwindcss" }, -- TailwindCSS: frameworks web, clases utilitarias
  -- { import = "astrocommunity.pack.php" },     -- PHP: Backend web, Laravel, WordPress
  -- { import = "astrocommunity.pack.typescript" }, -- TypeScript/JavaScript: React, Node.js, NextJS, etc.

  -- ==== Soporte para otros lenguajes (Descomentar para usar) ====
  -- { import = "astrocommunity.pack.java" },    -- Java: Springboot, Android, Enterprise (Usa jdtls)
  -- { import = "astrocommunity.pack.go" },      -- Go (Golang): Microservicios, CLI, concurrencia rápida
  -- { import = "astrocommunity.pack.cpp" },     -- C/C++: Motores gráficos, IoT, sistemas embebidos
  -- { import = "astrocommunity.pack.rust" },    -- Rust: Alto rendimiento de memoria, WebAssembly

  -- import/override with your plugins folder
}
