## 環境構築

参考 URL:

-   https://protobuf.dev/getting-started/gotutorial/#compiling-protocol-buffers
-   https://zenn.dev/hsaki/books/golang-grpc-starting/viewer/codegenerate

## コンパイル

```bash
$ ./build.sh
```

-   --go_out:
    -   リクエスト/レスポンス型の出力先
-   --go_opt=paths=source_relative: - 生成ファイルの出力先を制御する。これを指定しないと「go_package」に設定された文字列がそのままディレクトリ構造に反映されてしまい、${go_out}/${go_package}のような深い階層にファイルが生成されてしまう
-   --go-grpc_out:
    -   service ファイルの出力先
-   --go-grpc_opt:
    -   `go_opt`同様

参考 URL: https://zenn.dev/richardimaoka/articles/d4337235114a3b
