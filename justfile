run_server: build
  npm run serve

build:
  wasm-pack build --release --target nodejs
  npm run build
  node dist/index.js

clean:
  cargo clean
  rm -rf pkg
  rm -rf dist
