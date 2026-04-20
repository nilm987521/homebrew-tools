class adt < Formula
     desc "你的程式描述"
     homepage "https://github.com/nilm987521/adt"
     url "https://github.com/nilm987521/adt/releases/download/v0.0.1/adt_darwin_arm64.tar.gz"
     sha256 "a5aff081e335622eb11eb88a46b9ddd7a418fb553b96595f666f60c15a31ae02"
     license "MIT"

     def install
       # bin.install "adt"
       # 或如果是 Go/Rust 專案:
       system "go", "build", *std_go_args
     end

     test do
       assert_match "v0.0.1", shell_output("#{bin}/adt --version")
     end
   end
