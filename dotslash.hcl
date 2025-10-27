description = "dotslash simplifies binary deployments"
test = "dotslash --version"
binaries = ["dotslash"]
// # dotslash uses xarch (x86_64) for amd64, but not for arm64.
vars = {
  "linux_arch": "${xarch}",
}

platform "arm64" {
  vars = {
    "linux_arch": "arm64",
  }
}

darwin {
  // # Universal binary will work on both arm64 and amd64.
  source = "https://github.com/facebook/dotslash/releases/download/v${version}/dotslash-macos.v${version}.tar.gz"
}

linux {
  source = "https://github.com/facebook/dotslash/releases/download/v${version}/dotslash-linux-musl.${linux_arch}.v${version}.tar.gz"
}

version "0.5.2" "0.5.4" "0.5.5" "0.5.7" "0.5.8" {
  auto-version {
    github-release = "facebook/dotslash"
  }
}

sha256sums = {
  "https://github.com/facebook/dotslash/releases/download/v0.5.2/dotslash-macos.v0.5.2.tar.gz": "b7fc97b32deb3322dbc62f4162b65fd0556d4e9eba38c9fd19026fe23afd9445",
  "https://github.com/facebook/dotslash/releases/download/v0.5.2/dotslash-linux-musl.arm64.v0.5.2.tar.gz": "f42ee0d62a64af288d8c9778df2e5c887983f73a2ee454d2422c4834d5526110",
  "https://github.com/facebook/dotslash/releases/download/v0.5.2/dotslash-linux-musl.x86_64.v0.5.2.tar.gz": "b0dc232c9412add23517effdc32558af0fa8aa85427089147c68a750d4aed797",
  "https://github.com/facebook/dotslash/releases/download/v0.5.4/dotslash-linux-musl.arm64.v0.5.4.tar.gz": "23d69129f9e2e5c7b3de3fde7e374c9a98ba8adea3d8711906c3124248d4c630",
  "https://github.com/facebook/dotslash/releases/download/v0.5.4/dotslash-linux-musl.x86_64.v0.5.4.tar.gz": "f41780d8c26db8014489fd215b5fbf38e0aa6317afbcf869541e2013aa3fb6bd",
  "https://github.com/facebook/dotslash/releases/download/v0.5.4/dotslash-macos.v0.5.4.tar.gz": "36de80454f7a3590328336fee987f807c1e45f49039498f5288fe542061f0c3c",
  "https://github.com/facebook/dotslash/releases/download/v0.5.5/dotslash-linux-musl.x86_64.v0.5.5.tar.gz": "221ef28550ec6164a507560ca86e50be59d8160c39f7f93dfd2479e680a061ca",
  "https://github.com/facebook/dotslash/releases/download/v0.5.5/dotslash-macos.v0.5.5.tar.gz": "3c4bb3b4eb0cd45ebec69c0468b36a97e2b1ee84d9c33f04429317fc32bafb24",
  "https://github.com/facebook/dotslash/releases/download/v0.5.5/dotslash-linux-musl.arm64.v0.5.5.tar.gz": "e60de8814a1fe6dcbb07d1263e7a512f328f8a39a69a35b32416240164a40232",
  "https://github.com/facebook/dotslash/releases/download/v0.5.7/dotslash-linux-musl.x86_64.v0.5.7.tar.gz": "6a69229547d4be0356254fa9a11a24c431fdabb57aa87c0ed57e3bcc79968537",
  "https://github.com/facebook/dotslash/releases/download/v0.5.7/dotslash-macos.v0.5.7.tar.gz": "e6048c4f307469799ecfd232588616275bb291519117cf30e158341ca5252827",
  "https://github.com/facebook/dotslash/releases/download/v0.5.7/dotslash-linux-musl.arm64.v0.5.7.tar.gz": "c92b9a58f9fbc90bf0a111ee0d142747a7f9f81f15eb33f6b5379a8403aa31f2",
  "https://github.com/facebook/dotslash/releases/download/v0.5.8/dotslash-macos.v0.5.8.tar.gz": "bec2cc1dc98bc8f2e710403e6d7bdefc385bd47da3dbbfa5a5e0f8927f714d5d",
  "https://github.com/facebook/dotslash/releases/download/v0.5.8/dotslash-linux-musl.x86_64.v0.5.8.tar.gz": "b28a6f7957334e54b7194e5e02db93630be63211bc1b7ab99b56c5a3bdf57888",
  "https://github.com/facebook/dotslash/releases/download/v0.5.8/dotslash-linux-musl.arm64.v0.5.8.tar.gz": "34d728ba13da862f5f82a0ec72418a39935f90784541c91ac1ca63d3aea64854",
}
