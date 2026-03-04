# 🚀 AstroNvim Config - Max Performance & Dev Ready

![Neovim Version](https://img.shields.io/badge/Neovim-0.9.0+-blue)
![AstroNvim](https://img.shields.io/badge/AstroNvim-v4-orange)
![License](https://img.shields.io/badge/License-MIT-green)

Esta es una configuración altamente optimizada de **AstroNvim** diseñada específicamente para ofrecer el **máximo rendimiento en hardware modesto**, sin sacrificar características modernas como LSP, autocompletado inteligente y depuración nativa.

🔗 **Repositorio oficial**: [https://github.com/deverivaldofuentes-arch/configNvim.git](https://github.com/deverivaldofuentes-arch/configNvim.git)

---

## � Especificaciones de Hardware Recomendadas
Esta configuración ha sido afinada bloqueando funciones pesadas (*file watching*, diagnósticos en tiempo real) y limitando el renderizado de autocompletado para garantizar fluidez.

- **Mínimo Absoluto:** Procesador Dual-Core (ej. Intel Celeron/Pentium antiguos), 4GB de RAM, HDD.
- **Recomendado Exigente:** Procesador Quad-Core (ej. Core i3/i5 de 5ta gen+ o Ryzen 3), 8GB RAM, SSD.
- *Beneficio de Optimización:* Proyectos ultra-grandes de C# .NET o dependencias inmensas en `node_modules` no congelarán tu PC, ya que Neovim solo validará tu código cuando dejes de escribir un momento.

---

## 🛠️ Tecnologías Pre-Configuradas (Activas)

La configuración base viene lista ("Plug and Play") para:

- **C# / .NET / Avalonia:**
  - `omnisharp` (LSP - Autocompletado e inteligencia)
  - `netcoredbg` (Depurador - Breakpoints y ejecución)
  - `csharpier` (Formateador - Estilo de código estandarizado)
- **Desarrollo Web (Frontend Base):**
  - `html-lsp` / `css-lsp` (Inteligencia HTML y CSS)
  - `emmet-ls` (Snippets rápidos de marcado HTML)
  - `prettier` (El estándar mundial para formatear código web)

---

## 🔌 Cómo Activar Soporte para Otros Lenguajes (Java, Go, C++, Rust, PHP)

Adentro de la configuración hay soportes escondidos pero listos para la acción. Si necesitas programar en algo más, solo tienes que ir a tu terminal y descomentar algunas líneas en 3 archivos.

**1. `lua/community.lua`** (Atajos y Configuraciones del lenguaje)
Quita el comentario `--` al lenguaje que quieras.
```lua
{ import = "astrocommunity.pack.java" },
```

**2. `lua/plugins/mason.lua`** (Descarga de Dependencias)
Busca la sección del lenguaje y descomenta su LSP, Formateador y Depurador.
```lua
"jdtls",              -- Descomentar esto en la sección LSPs
"google-java-format", -- Descomentar esto en la sección Formateadores
"java-debug-adapter", -- Descomentar esto en Depuradores
```

**3. `lua/plugins/treesitter.lua`** (Colores y Sintaxis)
Añade el lenguaje en la lista para que se pinte correctamente.
```lua
"java",
```

**Por último:** Al abrir Neovim, teclea `:Lazy sync` para que instale automáticamente el nuevo lenguaje.

---

## ⌨️ Comandos y Atajos Principales (Keybindings)

Tu configuración usa la **Tecla Espacio** (Space) como el `<Leader>` principal. Casi todo se desencadena presionando Espacio seguido de otra tecla.

### 📁 Gestión de Archivos (Telescope / Neo-tree)
| Atajo | Acción |
| :--- | :--- |
| `<Espacio> e` | Abrir / Cerrar el árbol de carpetas lateral |
| `<Espacio> f f` | Buscar archivos por nombre en tu proyecto |
| `<Espacio> f w` | Buscar texto/palabras exactas dentro del proyecto completo |
| `<Espacio> c` o `<Espacio> b d` | Cerrar el archivo (buffer) actual |

### 🧠 Inteligencia y Formateo (LSP)
| Atajo | Acción |
| :--- | :--- |
| `g d` | Ir a la Definición (Ir hacia donde se creó la función/variable) |
| `K` (Mayúscula) | Hover: Ver cuadro de documentación de un método |
| `<Espacio> l r` | Renombrar una variable/clase segura en todas partes |
| `<Espacio> l f` | Formatear archivo (Acomodar llaves, espacios) automáticamente |
| `<Espacio> l a` | Acciones de código (Bombilla de soluciones para un error) |

### 🐞 Depuración y Breakpoints (DAP)
| Atajo | Acción |
| :--- | :--- |
| `<Espacio> d b` | Colocar/Quitar un Breakpoint en la línea actual |
| `<Espacio> d c` | Iniciar (Start) o Continuar depuración |
| `<Espacio> d i` | Step Into (Entrar dentro de la función evaluada) |
| `<Espacio> d o` | Step Over (Pasar a la siguiente línea de código) |

### 💻 Terminal y Consola
| Atajo | Acción |
| :--- | :--- |
| `<F7>` o `<Espacio> t f` | Activar/Ocultar Terminal Flotante general |
| `<Espacio> t p` | Abrir una terminal de Python rápida |
| `<Espacio> t n` | Abrir una terminal de Node.js rápida |

---

## ⚡ Rendimiento Extra y Transparencia

- **Transparencia Nativa:** El plugin de terceros `transparent.nvim` ha sido eliminado. La transparencia funciona activamente a costa de 0 de rendimiento usando la bandera nativa `transparent = true` del tema `oldworld.nvim`. *(Tu emulador de términal debe soportar opacidad)*.
- **Autocompletado Rápido:** Neovim está forzado a esperar tan solo 20ms antes de sugerir autocompletado (`nvim-cmp`) y descartarlo si los servidores se atoran por más de 200ms, proporcionando una escritura y menú ultrarrápidos, libres de "lags".

---
*Configuración hecha a medida para el balance perfecto entre fluidez, elegancia y productividad.*
