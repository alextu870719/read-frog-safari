function renderBootstrapError(error: unknown) {
  const root = document.getElementById("root")
  if (!root)
    return

  const message = error instanceof Error
    ? `${error.name}: ${error.message}`
    : String(error)

  root.className = "antialiased bg-background p-6 text-foreground"
  root.innerHTML = `<div class="space-y-2"><h1 class="text-lg font-semibold">Options page failed to load</h1><p class="text-sm text-muted-foreground break-all">${message}</p></div>`
}

window.addEventListener("error", (event) => {
  renderBootstrapError(event.error ?? event.message)
})

window.addEventListener("unhandledrejection", (event) => {
  renderBootstrapError(event.reason)
})

void import("./main")
  .catch((error) => {
    renderBootstrapError(error)
  })
