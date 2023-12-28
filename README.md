1. Download Docker Desktop

    https://www.docker.com/products/docker-desktop/
    
2. Download nvm

    ```sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    nvm install 10.15.2
    node -v
    ```

3. Clone project

    ```sh
    git clone git@github.com:dinhphuquy2k1/e-commerce.git
    ```

4. backendを起動
 
    intel mac

    ``` sh
    docker-compose up
    ```

    apple silicon mac
    ```sh
    docker-compose -f docker-compose-arm.yml up
    ```

5. Open web page locally

    http://localhost:8080/
    
    http://0.0.0.0:30001/

## mysql接続情報

| 項目              | 値 |
| ----              | ---- |
| MySQL Hostname    | 127.0.0.1 |
| MySQL Server Port | 50000     |
| Username          | root      |
| Password          | rootpass  |

---

## volumeコンテナーの管理

mysqlのデータに永続性を持たせるためmysqlのデータはvolumeコンテナーに保存している。DBを初期化する場合はvolumeを削除する。

volumeコンテナーの削除

``` bash
# volumeの一覧
docker volume ls
# volume nameを指定して削除
docker volume rm [VOLUME NAME]
```

または使用していないvolumeを一括で削除

``` bash
docker volume prune
```

---

## バッチ処理実行手順（開発）

1. 起動したコンテナにアクセス

    ``` bash
    docker exec -it uranus-app /bin/bash
    ```

2. cake_demand.shを実行

    シェル配置場所へ移動
    ``` bash
    cd /var/www/html/comet/dev-tools
    ```
    シェルの実行
    ``` bash
    sh cake_demand.sh comet
    ```

コンテナに入らず1行でcakeコマンドを実行する場合は以下
`Demand`を実行する例：
```bash
docker exec uranus-app /bin/sh -c "export WEB_APP_ROOT_NAME=comet;export WEB_APP_LOG_SUFFIX=_batch;/bin/sh /var/www/html/comet/app/Console/cake -app /var/www/html/comet/app Demand"  
```

---

# People 開発に向けて

## DB への SQL 適用

開発中に DB にあてたい SQL ファイルはddl, dmlに分けて以下に配置します。

- `{REPOSITORY_ROOT}/docker/mysql57/ddl`
- `{REPOSITORY_ROOT}/docker/mysql57/dml`

上記に配置したsqlファイルはコンテナー立ち上げ時に全て適用されます。  
dmlはCircleCI上では適用されません。  
ファイル名順に実行されるので実行順を気にする場合は考慮してください。  
処理するシェルスクリプト: [3_update.sh](docker/mysql57/3_update.sh)

差分だけを実行したい場合、以下のコマンドを実行します。

`$ docker exec mysql57 sh /docker-entrypoint-initdb.d/3_update.sh`

## DB を初期化

    $ docker-compose down -v
    $ docker-compose up -d
    
    M1 Macの場合
    $　docker-compose -f docker-compose-arm.yml up -d

## CircleCIと同じ環境

`docker-compose-ci.yml` を指定することでCircleCI上の実行と同じくdml適用無しで立ち上げられます。

    $ docker-compose -f docker-compose-ci.yml up -d
    $ docker-compose -f docker-compose-ci.yml down -v


