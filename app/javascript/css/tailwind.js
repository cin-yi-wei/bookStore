const plugin = require("tailwindcss/plugin");

module.exports = {
  mode: "jit",
  purge: [
    "app/helpers/**/*.rb",
    "app/javascript/**/*.jsx",
    "app/views/**/*.{erb,haml,html,slim}",
  ],
  content: [],
  variants: {
    extend: {},
  },
  theme: {
    extend: {
      colors: {
        'regal-blue': '#0066cc',
      },
    },
  },
  plugins: [],
}
