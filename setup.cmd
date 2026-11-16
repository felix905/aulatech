@echo off
echo ============================================
echo  Setup proyecto Eddie - Tailwind
echo ============================================

cd /d "%~dp0"

echo [1/6] Creando carpetas...
if not exist "src" mkdir src
if not exist "assets" mkdir assets
if not exist "assets\images" mkdir assets\images
if not exist "assets\videos" mkdir assets\videos
if not exist "assets\icons" mkdir assets\icons
if not exist "assets\fonts" mkdir assets\fonts
if not exist "scripts" mkdir scripts
if not exist "backup" mkdir backup

echo [2/6] Respaldando index.html original...
if exist "index.html" if not exist "backup\index.original.html" copy index.html backup\index.original.html >nul

echo [3/6] Copiando assets locales...
if exist "index_files\EDDIE-codeQR.png" copy "index_files\EDDIE-codeQR.png" "assets\images\eddie-qr.png" >nul
if exist "index_files\HC-Horizontal-B.png" copy "index_files\HC-Horizontal-B.png" "assets\images\hypercharge.png" >nul

echo [4/6] Creando src\input.css...
(
echo @tailwind base;
echo @tailwind components;
echo @tailwind utilities;
echo.
echo @layer base {
echo   html { scroll-behavior: smooth; }
echo   body { @apply font-sans text-eddie-black bg-white antialiased; }
echo }
) > src\input.css

echo [5/6] Creando tailwind.config.js...
(
echo /** @type {import('tailwindcss').Config} */
echo module.exports = {
echo   content: ["./index.html", "./src/**/*.{html,js}"],
echo   theme: {
echo     extend: {
echo       colors: {
echo         'dull-lavender': '#B7B2FF',
echo         'aqua-island': '#A8E6CF',
echo         'sulu': '#C6F36B',
echo         'biloba-flower': '#D9C8F0',
echo         'pampas': '#F5F1EA',
echo         'scarpa-flow': '#2E2E2E',
echo         'french-gray': '#BDBDBD',
echo         'medium-purple': '#9B7EDE',
echo         'beige': '#F0EAD6',
echo         'dawn-pink': '#F4E1E1',
echo         'eddie-black': '#000000',
echo       },
echo       fontFamily: {
echo         sans: ['Inter', 'system-ui', 'sans-serif'],
echo       },
echo       borderRadius: {
echo         'eddie': '1.25rem',
echo       },
echo     },
echo   },
echo   plugins: [],
echo };
) > tailwind.config.js

echo [6/6] Listo.
echo.
echo Siguiente paso: npm install -D tailwindcss@3
echo Luego: npx tailwindcss init -p
echo Luego: npm run dev
pause