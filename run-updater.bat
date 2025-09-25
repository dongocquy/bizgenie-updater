@echo off
chcp 65001 >nul
title BizgenieERP Updater

echo.
echo ===============================================
echo    BIZGENIE ERP UPDATER
echo ===============================================
echo.

cd /d "%~dp0"

if not exist "Updater.exe" (
    echo ❌ Không tìm thấy file Updater.exe!
    echo Vui lòng đảm bảo file Updater.exe có trong thư mục này.
    pause
    exit /b 1
)

if not exist "config.json" (
    echo ❌ Không tìm thấy file config.json!
    echo Vui lòng đảm bảo file config.json có trong thư mục này.
    pause
    exit /b 1
)

echo 🚀 Đang khởi động BizgenieERP Updater...
echo.

Updater.exe

echo.
echo ===============================================
echo    HOÀN TẤT
echo ===============================================
echo.
pause