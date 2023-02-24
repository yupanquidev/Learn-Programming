import { BUTTONS, EVENTS } from './consts'

export function navigate (href) {
  window.history.pushState({}, '', href)
  // Crear un evento personalizado
  const navigationEvent = new Event(EVENTS.PUSHSTATE)
  // Enviar el evento ó despachar el evento
  window.dispatchEvent(navigationEvent)
}

export function Link ({ target, to, ...props }) {
  const handleClick = (event) => {
    const isMainEvent = event.button === BUTTONS.primary // Primary click
    const isNotModified = event.metaKey || event.altKey || event.ctrlKey || event.shiftKey // Click with modifier keys
    const isManageableEvent = target === undefined || target === '_self'

    if (isMainEvent && isManageableEvent && !isNotModified) {
      event.preventDefault()
      navigate(to) // Navegación con SPA
    }
  }

  return (
    <a onClick={handleClick} href={to} target={target} {...props} />
  )
}
