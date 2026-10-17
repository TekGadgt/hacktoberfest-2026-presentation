import { defineAppSetup } from '@slidev/types'
import { eventData } from '../event.config'

export default defineAppSetup(({ app }) => {
  app.config.globalProperties.$eventData = eventData
})
