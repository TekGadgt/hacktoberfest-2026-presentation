<script setup lang="ts">
import QrcodeVue from 'qrcode.vue'

defineProps<{
  value: string
  label?: string
  size?: number
}>()
</script>

<template>
  <figure class="event-qr">
    <div class="event-qr__code">
      <QrcodeVue :value="value" :size="size ?? 150" level="M" render-as="svg" />
    </div>
    <figcaption v-if="label">{{ label }}</figcaption>
  </figure>
</template>
