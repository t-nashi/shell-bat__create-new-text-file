@echo off

rem 準備 ##########
rem --
rem コマンドプロントの文字コードをutf-8に変更
chcp 65001

rem コマンドプロントの文字コードをSJISに変更
rem chcp 932

rem 変数定義 ##########
rem ドライブ文字とパス
set _root=%~dp0

rem 作成するファイル名
set time2=%time: =0%
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set hour=%time2:~0,2%
set minute=%time2:~3,2%
set second=%time2:~6,2%
set createTextFileName=%year%%month%%day%_%hour%%minute%%second%

rem メイン処理 start ##########
rem --

  rem フォルダを移動
  pushd %_root%

  rem テキストファイル新規作成
  type nul > %createTextFileName%.txt

rem --
rem メイン処理 end ##########

rem メッセージ
@REM echo 「%createTextFileName%.txt」を新規作成しました

rem 処理を止める
@REM pause
