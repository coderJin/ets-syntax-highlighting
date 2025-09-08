# ETS语法高亮插件使用指南

## 快速开始

### 1. 测试插件

1. 在VSCode中打开此项目文件夹
2. 按 `F5` 启动扩展开发主机（Extension Development Host）
3. 在新打开的VSCode窗口中，打开 `test/example.ets` 文件
4. 验证语法高亮是否正常工作

### 2. 测试代码片段

在ETS文件中输入以下前缀并按Tab键：

- `component` - 创建组件
- `entry` - 创建入口组件  
- `state` - 创建状态变量
- `button` - 创建按钮
- `text` - 创建文本
- `column` - 创建列布局
- `row` - 创建行布局

## 支持的语法特性

### 装饰器
- `@Component` - 组件装饰器
- `@Entry` - 入口装饰器
- `@State` - 状态装饰器
- `@Prop` - 属性装饰器
- `@Link` - 链接装饰器
- `@Provide/@Consume` - 依赖注入装饰器
- `@Builder` - 构建器装饰器
- `@Styles` - 样式装饰器
- `@Extend` - 扩展装饰器

### ArkUI组件
- 布局组件：`Column`, `Row`, `Stack`, `Flex`
- 基础组件：`Text`, `Button`, `Image`, `TextInput`
- 容器组件：`List`, `Grid`, `Scroll`, `Swiper`
- 导航组件：`Tabs`, `Navigation`

### TypeScript特性
- 接口定义
- 类定义
- 枚举类型
- 泛型支持
- 类型注解
- 模板字符串

## 文件结构说明

```
ets-syntax-highlighting/
├── package.json                 # 插件配置文件
├── syntaxes/
│   └── ets.tmLanguage.json     # TextMate语法定义
├── language-configuration.json  # 语言配置
├── snippets/
│   └── ets.json               # 代码片段定义
├── test/
│   └── example.ets            # 测试文件
└── README.md                  # 说明文档
```

## 开发和调试

### 修改语法高亮

1. 编辑 `syntaxes/ets.tmLanguage.json`
2. 按 `Ctrl+Shift+P` 打开命令面板
3. 运行 `Developer: Reload Window` 重新加载窗口
4. 查看语法高亮变化

### 添加代码片段

1. 编辑 `snippets/ets.json`
2. 添加新的代码片段定义
3. 重新加载窗口测试

### 修改语言配置

1. 编辑 `language-configuration.json`
2. 修改括号匹配、自动补全等配置
3. 重新加载窗口测试

## 发布插件

### 准备发布

1. 更新 `package.json` 中的版本号
2. 更新 `CHANGELOG.md`
3. 确保所有文件都已提交到Git

### 打包插件

```bash
# 安装vsce工具
npm install -g vsce

# 打包插件
vsce package

# 这将生成 .vsix 文件
```

### 发布到市场

```bash
# 登录到Visual Studio Marketplace
vsce login <publisher-name>

# 发布插件
vsce publish
```

## 故障排除

### 语法高亮不工作

1. 检查文件扩展名是否为 `.ets`
2. 确认插件已正确加载
3. 尝试重新加载窗口

### 代码片段不显示

1. 确认在ETS文件中输入
2. 检查 `snippets/ets.json` 语法是否正确
3. 重新加载窗口

### 插件无法加载

1. 检查 `package.json` 语法
2. 确认所有必需字段都已填写
3. 查看开发者控制台错误信息

## 贡献指南

欢迎提交Issue和Pull Request来改进这个插件！

### 报告问题

1. 提供详细的问题描述
2. 包含重现步骤
3. 提供示例代码

### 提交改进

1. Fork项目
2. 创建功能分支
3. 提交Pull Request

## 许可证

MIT License - 详见LICENSE文件
