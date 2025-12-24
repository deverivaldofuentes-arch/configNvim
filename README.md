```markdown
# 🚀 Neovim Configuration - LazyVim Based Setup

<p align="center">
  <img src="https://img.shields.io/badge/Neovim-0.9+-green.svg?style=for-the-badge&logo=neovim" alt="Neovim Version">
  <img src="https://img.shields.io/badge/Lua-JIT-purple.svg?style=for-the-badge&logo=lua" alt="Lua JIT">
  <img src="https://img.shields.io/badge/LazyVim-Config-blue.svg?style=for-the-badge" alt="LazyVim">
  <img src="https://img.shields.io/badge/Go-1.21%2B-00ADD8.svg?style=for-the-badge&logo=go" alt="Go Version">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge" alt="License">
</p>

Una configuración moderna de Neovim basada en [LazyVim](https://www.lazyvim.org/), optimizada para desarrollo en **Go**, **Java** y **Web** con carga diferida para máximo rendimiento.

## ✨ Características Principales

- ⚡ **Carga diferida** con lazy.nvim para arranque rápido
- 🎨 **Múltiples temas** con soporte para fondo transparente
- 🔧 **Configuración modular** por lenguaje (Go, Java, Web)
- 🐛 **Depuración integrada** con nvim-dap
- 📦 **Gestión automática** de LSP, formateadores y linters con Mason
- 🌳 **Sintaxis avanzada** con Treesitter
- 🖥️ **Terminal flotante** con ToggleTerm
- 📋 **Autocompletado inteligente** con nvim-cmp
- 🔌 **Estructura organizada** y fácil de personalizar

## 📋 Requisitos Previos

### Sistema
- **Neovim 0.9+** (recomendado 0.10+)
- **Git** 2.0+
- Terminal con soporte de 24-bit color

### Dependencias por Lenguaje

<details>
<summary><strong>Go</strong></summary>

```bash
# Instalar herramientas de desarrollo Go
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install golang.org/x/tools/cmd/goimports@latest
```
</details>

<details>
<summary><strong>Java</strong></summary>

```bash
# JDK 17+ (recomendado Temurin)

# macOS con Homebrew:
brew install temurin

# Linux (Ubuntu/Debian):
sudo apt install openjdk-17-jdk

# Windows con Chocolatey:
choco install temurin17
```
</details>

<details>
<summary><strong>Web Development</strong></summary>

```bash
# Node.js 18+ y herramientas
npm install -g typescript typescript-language-server

# Python (opcional para algunos plugins)
python3 -m pip install pynvim
```
</details>

## 🚀 Instalación Rápida

### 1. Backup de configuración existente
```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
```

### 2. Clonar la configuración
```bash
git clone https://github.com/tu-usuario/tu-repo-nvim.git ~/.config/nvim
```

### 3. Iniciar Neovim
```bash
nvim
```

**La primera ejecución:**
- ✅ Instalará automáticamente lazy.nvim
- ✅ Descargará todos los plugins
- ✅ Configurará LSP servers via Mason
- ⏱️ Tarda 3-5 minutos la primera vez

## 📁 Estructura del Proyecto

```
~/.config/nvim/
├── lua/
│   ├── config/           # Configuraciones base
│   │   ├── autocmds.lua  # Auto-comandos personalizados
│   │   ├── keymaps.lua   # Atajos de teclado
│   │   ├── lazy.lua      # Configuración de lazy.nvim
│   │   └── options.lua   # Opciones de Neovim
│   │
│   └── plugins/          # Configuración modular de plugins
│       ├── go.lua        # Configuración para Go
│       ├── java.lua      # Configuración para Java
│       ├── web.lua       # Configuración para desarrollo web
│       ├── treesitter.lua # Parsers de Treesitter
│       ├── lsp.lua       # Configuración de LSP
│       ├── mason.lua     # Herramientas externas
│       ├── nvim-dap.lua  # Depuración
│       └── colorscheme.lua # Temas de colores
│
├── init.lua             # Punto de entrada principal
├── LICENSE              # Licencia MIT
└── README.md            # Esta documentación
```

## 🎯 Lenguajes Soportados

### 🐹 Go
| Característica | Plugin/Tool | Estado |
|----------------|-------------|--------|
| LSP Server | gopls | ✅ |
| Debugger | delve + nvim-dap-go | ✅ |
| Code Generation | gopher.nvim | ✅ |
| Formatting | gofumpt + goimports | ✅ |
| Syntax Highlighting | Treesitter | ✅ |
| Test Runner | vim-go | ✅ |

### ☕ Java
| Característica | Plugin/Tool | Estado |
|----------------|-------------|--------|
| LSP Server | jdtls | ✅ |
| Project Detection | Auto (Maven/Gradle) | ✅ |
| Compile & Run | ToggleTerm integration | ✅ |
| Syntax Highlighting | Treesitter | ✅ |

### 🌐 Web Development
| Lenguaje | LSP | Treesitter | Herramientas |
|----------|-----|------------|--------------|
| HTML | html-lsp | ✅ | Emmet, autotag |
| CSS | css-lsp | ✅ | TailwindCSS |
| JavaScript | tsserver | ✅ | - |
| TypeScript | tsserver | ✅ | - |
| JSON | json-lsp | ✅ | - |

## ⌨️ Atajos de Teclado Esenciales

### 🎮 Navegación General
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<space>` | N | Tecla líder |
| `<C-s>` | N | Guardar archivo |
| `<C-q>` | N | Salir |
| `<leader>ff` | N | Buscar archivos (Telescope) |
| `<leader>fg` | N | Buscar texto (Telescope) |
| `<leader>fb` | N | Buscar buffers (Telescope) |

### 🔧 LSP (Language Server)
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `gd` | N | Ir a definición |
| `gr` | N | Ver referencias |
| `K` | N | Mostrar documentación |
| `<leader>ca` | N | Acciones de código |
| `<leader>rn` | N | Renombrar símbolo |
| `<leader>f` | N | Formatear código |

### 🐛 Depuración (DAP)
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<leader>db` | N | Toggle breakpoint |
| `<leader>dc` | N | Continuar/Iniciar |
| `<leader>do` | N | Step over |
| `<leader>di` | N | Step into |
| `<leader>dO` | N | Step out |

### 🖥️ Terminal
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<C-\>` | N | Abrir terminal flotante |
| `<Esc>` | T | Salir del modo terminal |

### 📁 Navegación de Ventanas
| Atajo | Modo | Descripción |
|-------|------|-------------|
| `<C-h>` | N | Ventana izquierda |
| `<C-j>` | N | Ventana inferior |
| `<C-k>` | N | Ventana superior |
| `<C-l>` | N | Ventana derecha |
| `<leader>wv` | N | Dividir verticalmente |
| `<leader>ws` | N | Dividir horizontalmente |

## 🎨 Temas Disponibles

### Configuración Actual
```lua
-- lua/plugins/colorscheme.lua
{
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "gentleman-kanagawa-blur", -- Tema por defecto
  },
}
```

### Temas Incluidos
1. **gentleman-kanagawa-blur** (predeterminado) - Kanagawa con efectos de blur
2. **kanagawa.nvim** - Wave, Dragon, Lotus variants
3. **catppuccin** - Latte, Frappe, Macchiato, Mocha
4. **oldworld.nvim** - Tema clásico estilo antiguo

### Cambiar Tema
1. Edita `lua/plugins/colorscheme.lua`
2. Cambia la línea `colorscheme = "nombre-tema"`
3. Reinicia Neovim o ejecuta `:Lazy reload`

## ⚙️ Personalización

### Añadir Nuevos Plugins
Crea un archivo en `lua/plugins/`:

```lua
-- lua/plugins/mi-plugin.lua
return {
  {
    "autor/plugin",
    event = "VeryLazy", -- Carga diferida
    config = function()
      -- Configuración aquí
    end,
  },
}
```

### Añadir Atajos Personalizados
Edita `lua/config/keymaps.lua`:

```lua
-- Ejemplo: Atajo personalizado
vim.keymap.set("n", "<leader>xx", "<cmd>!chmod +x %<CR>", { desc = "Hacer ejecutable" })
```

### Añadir Soporte para Nuevo Lenguaje
1. **Añadir parser a Treesitter** (`lua/plugins/treesitter.lua`)
2. **Configurar LSP server** (`lua/plugins/lsp.lua`)
3. **Añadir herramienta a Mason** (`lua/plugins/mason.lua`)

## 🐛 Solución de Problemas

### Problemas Comunes

<details>
<summary><strong>Plugins no se instalan</strong></summary>

```bash
rm -rf ~/.local/share/nvim/lazy
nvim
```
</details>

<details>
<summary><strong>LSP servers no funcionan</strong></summary>

```vim
:MasonInstallAll  -- Instala todas las herramientas
:LspRestart       -- Reinicia LSP servers
```
</details>

<details>
<summary><strong>Treesitter no resalta sintaxis</strong></summary>

```vim
:TSInstall <lenguaje>  -- Instala parser específico
:TSUpdate             -- Actualiza todos los parsers
```
</details>

<details>
<summary><strong>Problemas con Go tools</strong></summary>

```bash
# Limpiar cache y reinstalar
go clean -modcache
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
```
</details>

### Comandos Útiles
```vim
:Lazy           # Administrar plugins
:Mason          # Administrar herramientas LSP/DAP
:TSInstallInfo  # Ver parsers instalados
:checkhealth    # Diagnóstico del sistema
:LspInfo        # Información de LSP activo
```

## 🔄 Actualización

### Actualizar Plugins
```vim
:Lazy update
```

### Actualizar Configuración
```bash
cd ~/.config/nvim
git pull origin main
nvim +Lazy update
```

### Actualizar Herramientas Mason
```vim
:MasonUpdate
```

## 📚 Recursos y Referencias

- [LazyVim Documentation](https://www.lazyvim.org/)
- [Neovim Documentation](https://neovim.io/doc/user/)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas!

1. **Fork** el proyecto
2. Crea una **rama** (`git checkout -b feature/AmazingFeature`)
3. **Commit** cambios (`git commit -m 'Add AmazingFeature'`)
4. **Push** a la rama (`git push origin feature/AmazingFeature`)
5. Abre un **Pull Request**

### Guía de Estilo
- Usa **Lua** para nuevas configuraciones
- Mantén la **estructura modular**
- Documenta cambios en **README.md**
- Prueba cambios antes de hacer PR

## 📄 Licencia

Distribuido bajo la licencia MIT. Ver `LICENSE` para más información.

## 👤 Autor

**Tu Nombre**
- GitHub: [@tu-usuario](https://github.com/tu-usuario)
- Twitter: [@tu-twitter](https://twitter.com/tu-twitter)

## 🙏 Agradecimientos

- [LazyVim](https://github.com/LazyVim/LazyVim) - Por la increíble base
- [folke](https://github.com/folke) - Por lazy.nvim
- Todos los mantenedores de plugins de Neovim
- La comunidad de Neovim

---

<p align="center">
  <strong>⭐ Si te gusta esta configuración, por favor dale una estrella al repositorio!</strong>
</p>

<p align="center">
  <sub>Hecho con ❤️ para la comunidad de Neovim</sub>
</p>
```

---

## 🎯 Instrucciones para Publicar

1. **Reemplaza los placeholders:**
   - `tu-usuario` → Tu nombre de usuario de GitHub
   - `tu-repo-nvim` → Nombre de tu repositorio
   - `Tu Nombre` → Tu nombre real o nickname
   - `@tu-twitter` → Tu Twitter (opcional)

2. **Añade capturas de pantalla:**
   Crea una carpeta `screenshots/` y añade imágenes:
   ```
   /screenshots
   ├── go-development.png
   ├── java-development.png
   ├── web-development.png
   └── theme-preview.png
   ```

3. **Configura el repositorio:**
   ```bash
   # Inicializa git
   cd ~/.config/nvim
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/tu-usuario/tu-repo-nvim.git
   git push -u origin main
   ```

4. **Añade badges personalizados** (opcional):
   Visita [shields.io](https://shields.io) para crear badges personalizados.

5. **Configura GitHub Pages** para documentación adicional si es necesario.

