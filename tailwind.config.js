/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        'dull-lavender': '#B7B2FF',
        'aqua-island': '#A8E6CF',
        'sulu': '#C6F36B',
        'biloba-flower': '#D9C8F0',
        'pampas': '#F5F1EA',
        'scarpa-flow': '#2E2E2E',
        'french-gray': '#BDBDBD',
        'medium-purple': '#9B7EDE',
        'beige': '#F0EAD6',
        'dawn-pink': '#F4E1E1',
        'eddie-black': '#000000',
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
      borderRadius: {
        'eddie': '1.25rem',
      },
    },
  },
  plugins: [],
};