import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
//this also work with for live update
application.debug = false
window.Stimulus = application

export { application }
