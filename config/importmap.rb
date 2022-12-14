# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin "nav_bar"
pin "years"
pin "dashboard"

pin "lottie", to: "https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"