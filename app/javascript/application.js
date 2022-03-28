// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "chartkick/chart.js"
import InfiniteMarquee from 'infinite-marquee'

new InfiniteMarquee({
  direction: 'right',
  duration: 20
})
