module.exports = {
  mode: 'jit',
  darkMode: 'media',
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('tailwindcss-children'),
    require('daisyui')
  ],
  theme: {
    extend: {
      gridTemplateRows: {
        'auto-1fr-auto': 'auto 1fr auto',
        'custom': '7ex auto 4ex'
      },
      underline: {
        'dotted': 'dotted'
      },
      // keyframes: {
      //   marquee: {
      //     '0%': {transform: 'translateX(-100%)'},
      //     // '50%': {transform: 'translateX(100%)'},
      //     // '100%': {transform: 'translateX(-100%)'}
      //   }
      // }
    }
  }
}
