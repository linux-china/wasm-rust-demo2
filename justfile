run_server: build
  npm run serve

build:
  wasm-pack build --release --target nodejs
  npm run build
  node dist/index.js

build2:
  cargo build --target wasm32-unknown-unknown
  wasm-bindgen --nodejs target/wasm32-unknown-unknown/debug/wasm_rust_demo.wasm --out-dir build

clean:
  cargo clean
  rm -rf pkg
  rm -rf dist
