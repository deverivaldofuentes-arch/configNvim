# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
# Configuración de Neovim (LazyVim) para Go y HTML

Este repositorio contiene mi configuración personalizada de **Neovim**, basada en **LazyVim**, optimizada para trabajar con **Go** y **desarrollo web**.

## Requisitos para Go

Para habilitar autocompletado, análisis estático y depuración en Go, instala las siguientes herramientas:

```bash
# Instala gopls y otras herramientas importantes
go install golang.org/x/tools/gopls@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest
```

Estas herramientas son necesarias para que Neovim ofrezca características como:

* Autocompletado inteligente (LSP)
* Formateo automático
* Detección de errores y avisos
* Depuración con Delve

Si deseas agregar más secciones al README, indícalo.

