@echo off
echo 🚀 启动ETS语法高亮插件测试...
echo.
echo 📝 测试步骤:
echo 1. 即将启动VSCode扩展开发主机
echo 2. 在新窗口中会自动打开测试文件
echo 3. 检查语法高亮是否正常工作
echo.
echo 💡 如果语法高亮不工作:
echo - 检查右下角语言模式是否为"ETS"
echo - 尝试手动选择语言: Ctrl+Shift+P -> "Change Language Mode" -> "ETS"
echo - 重新加载窗口: Ctrl+Shift+P -> "Developer: Reload Window"
echo.
pause
code --extensionDevelopmentPath=. simple-test.ets
