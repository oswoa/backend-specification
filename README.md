## 環境構築

参考 URL: https://protobuf.dev/getting-started/gotutorial/#compiling-protocol-buffers

## コンパイル

```bash
$ protoc --go_out=<出力先> \
    --go_opt=paths=source_relative \
    <protoファイル名>
```

-   --go_out:
    -   生成ファイルの出力先
-   --go_opt=paths=source_relative: - 生成ファイルの出力先を制御する。これを指定しないと「go_package」に設定された文字列がそのままディレクトリ構造に反映されてしまい、${go_out}/${go_package}のような深い階層にファイルが生成されてしまう

参考 URL: https://zenn.dev/richardimaoka/articles/d4337235114a3b
