import { Elm } from './src/Main.elm'

if (module.hot) {
  module.hot.accept()
}

Elm.Main.init({
  node: document.querySelector('main')
})
