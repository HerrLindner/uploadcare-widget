# = require uploadcare/core/boot
# = require uploadcare/debug
# = require uploadcare/utils
# = require uploadcare/defaults
# = require uploadcare/locale
# = require uploadcare/templates
# = require uploadcare/stylesheets
# = require uploadcare/widget/widget
# = require uploadcare/widget/submit-guard
# = require uploadcare/ui/crop/crop-widget

# Exports
uploadcare.whenReady ->
  window.uploadcare.fileFrom = uploadcare.fileFrom
  window.uploadcare.openDialog = uploadcare.openDialog
  window.uploadcare.Circle = uploadcare.ui.progress.Circle
