#!/bin/bash

# 変数定義 ##########
# --
# カレントディレクトリ（.commandファイル実行時）
CURRENT=$(cd $(dirname $0);pwd)
  # echo "・カレントディレクトリ： ${CURRENT}"

# メイン処理 start ########################################
# --
  echo -e "\n--コマンドstart--\n"

  # カレントディレクトリへ移動
  cd $CURRENT

  # 日時取得
  DATETIME=$(date +"%Y%m%d_%I%M%S")
    # echo $DATETIME

  # 新規テキストファイル作成
  touch $DATETIME.txt

  echo -e "\n--コマンドend--\n"
# --
# メイン処理 end ########################################

# プロセスを終了
# osascript -e 'tell application "Terminal" to close first window'
