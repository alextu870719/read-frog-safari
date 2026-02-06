# 修改說明 / Modifications

本專案是基於原始 [Read Frog](https://github.com/mengxi-ream/read-frog) 專案的修改版本。

This is a modified version of the original [Read Frog](https://github.com/mengxi-ream/read-frog) project.

## 修改內容 / Changes Made

### 1. 快捷鍵調整 / Keyboard Shortcut Adjustment

- **原本 / Original**: `Option + E`
- **修改後 / Modified**: `Option + A`
- **檔案 / File**: `src/utils/constants/translate.ts`

### 2. 預設語言設定 / Default Language Setting

- **原本 / Original**: 簡體中文 (cmn)
- **修改後 / Modified**: 繁體中文 (cmnHant)
- **檔案 / File**: `src/utils/constants/config.ts`

### 3. 影片字幕翻譯 / Video Subtitle Translation

- **修改 / Change**: 預設開啟影片字幕翻譯功能
- **原本 / Original**: `enabled: false`
- **修改後 / Modified**: `enabled: true`
- **檔案 / File**: `src/utils/constants/config.ts`

### 4. Bug 修復 / Bug Fix

- **問題 / Issue**: 影片字幕在滑鼠懸停時位置會跳動
- **修復 / Fix**: 移除控制列高度偏移計算邏輯
- **檔案 / File**: `src/entrypoints/subtitles.content/ui/use-vertical-drag.ts`

## 授權 / License

本專案遵循 GPL-3.0 授權條款，與原始專案保持一致。

This project follows the GPL-3.0 license, consistent with the original project.

## 原始專案資訊 / Original Project Information

- **專案 / Project**: Read Frog
- **作者 / Author**: mengxi-ream
- **原始儲存庫 / Original Repository**: https://github.com/mengxi-ream/read-frog
- **授權 / License**: GPL-3.0

---

**修改日期 / Modification Date**: 2026-02-06
