// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "chartkick/chart.js"
import LocalTime from "local-time"
import InfiniteMarquee from 'infinite-marquee'

LocalTime.start()

new InfiniteMarquee({
  direction: 'right',
  duration: 20
})
