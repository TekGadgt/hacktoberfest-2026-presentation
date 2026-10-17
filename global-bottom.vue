<script setup lang="ts">
import { computed, onMounted, onUnmounted, ref } from 'vue'
import { useNav } from '@slidev/client'

const INTERVAL_MS = 15_000

const nav = useNav()
// Slides opt in with `loop: true` in their frontmatter
const loopSlides = computed(() => nav.slides.value
  .filter(route => route.meta?.slide?.frontmatter?.loop)
  .map(route => route.no))
const looping = ref(false)
let timer: ReturnType<typeof setInterval> | null = null

function advance() {
  const slides = loopSlides.value
  const index = slides.indexOf(nav.currentPage.value)
  const next = index < 0 || index === slides.length - 1
    ? slides[0]
    : slides[index + 1]
  nav.go(next)
}

function stop() {
  if (timer) clearInterval(timer)
  timer = null
  looping.value = false
}

function start() {
  looping.value = true
  advance()
  timer = setInterval(advance, INTERVAL_MS)
}

function onKeydown(event: KeyboardEvent) {
  if (event.key.toLowerCase() === 'a') {
    event.preventDefault()
    event.stopPropagation()
    looping.value ? stop() : start()
  } else if (looping.value) {
    stop()
  }
}

function onPointerdown() {
  if (looping.value) stop()
}

onMounted(() => {
  window.addEventListener('keydown', onKeydown, true)
  window.addEventListener('pointerdown', onPointerdown, true)
})

onUnmounted(() => {
  window.removeEventListener('keydown', onKeydown, true)
  window.removeEventListener('pointerdown', onPointerdown, true)
  stop()
})
</script>

<template>
  <div v-if="looping" class="loop-status">INFO LOOP · PRESS A TO STOP</div>
</template>

<style scoped>
.loop-status {
  position: fixed;
  bottom: 0.7rem;
  left: 50%;
  transform: translateX(-50%);
  z-index: 100;
  padding: 0.25rem 0.7rem;
  border: 2px solid #f5be62;
  background: #214d49;
  color: #f7f7f2;
  font: 700 0.65rem/1.2 'IBM Plex Mono', Menlo, monospace;
  letter-spacing: 0.08em;
}
</style>
