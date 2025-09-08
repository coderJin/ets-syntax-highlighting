// ETS (ArkTS) 语法高亮测试文件
// 这个文件包含了各种ETS语法元素用于测试语法高亮

import { router } from '@ohos.router'
import hilog from '@ohos.hilog'

// 装饰器测试
@Component
export struct MainPage {
  // 状态变量
  @State message: string = 'Hello World'
  @State count: number = 0
  @Prop title: string
  @Link isVisible: boolean
  @Provide('theme') theme: string = 'light'
  @Consume('user') user: UserInfo

  // 常量
  private readonly MAX_COUNT: number = 100
  private static readonly APP_NAME: string = 'MyApp'

  // 生命周期方法
  aboutToAppear() {
    hilog.info(0x0000, 'testTag', 'MainPage aboutToAppear')
  }

  // 构建方法
  build() {
    Column({ space: 20 }) {
      // 文本组件
      Text(this.message)
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)
        .textAlign(TextAlign.Center)
        .margin({ top: 20 })

      // 按钮组件
      Button('点击我')
        .width('80%')
        .height(40)
        .backgroundColor('#007DFF')
        .borderRadius(8)
        .onClick(() => {
          this.count++
          this.message = `点击了 ${this.count} 次`
          
          // 条件判断
          if (this.count >= this.MAX_COUNT) {
            this.count = 0
            this.message = '计数已重置'
          }
        })

      // 输入框
      TextInput({ placeholder: '请输入内容' })
        .width('90%')
        .height(40)
        .borderRadius(8)
        .backgroundColor('#F5F5F5')
        .onChange((value: string) => {
          console.log(`输入内容: ${value}`)
        })

      // 图片组件
      Image($r('app.media.icon'))
        .width(100)
        .height(100)
        .borderRadius(50)
        .objectFit(ImageFit.Cover)

      // 列表组件
      List({ space: 10 }) {
        ForEach(this.getDataList(), (item: DataItem, index: number) => {
          ListItem() {
            Row() {
              Text(item.title)
                .fontSize(16)
                .fontWeight(FontWeight.Medium)
              Spacer()
              Text(item.value.toString())
                .fontSize(14)
                .fontColor('#666666')
            }
            .width('100%')
            .padding(10)
            .backgroundColor('#FFFFFF')
            .borderRadius(8)
          }
        }, (item: DataItem) => item.id.toString())
      }
      .width('100%')
      .height(200)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#F0F0F0')
  }

  // 私有方法
  private getDataList(): DataItem[] {
    const data: DataItem[] = []
    for (let i = 0; i < 10; i++) {
      data.push({
        id: i,
        title: `项目 ${i + 1}`,
        value: Math.random() * 100
      })
    }
    return data
  }

  // 异步方法
  private async loadData(): Promise<void> {
    try {
      const response = await fetch('https://api.example.com/data')
      const data = await response.json()
      this.message = `加载了 ${data.length} 条数据`
    } catch (error) {
      console.error('加载数据失败:', error)
      this.message = '加载失败'
    }
  }
}

// 接口定义
interface DataItem {
  id: number
  title: string
  value: number
}

interface UserInfo {
  name: string
  age: number
  avatar?: string
}

// 类定义
class DataService {
  private baseUrl: string = 'https://api.example.com'
  
  constructor(baseUrl?: string) {
    if (baseUrl) {
      this.baseUrl = baseUrl
    }
  }

  public async getData(): Promise<DataItem[]> {
    // 模拟网络请求
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        const data: DataItem[] = [
          { id: 1, title: '示例数据1', value: 42 },
          { id: 2, title: '示例数据2', value: 84 }
        ]
        resolve(data)
      }, 1000)
    })
  }
}

// 枚举定义
enum Theme {
  Light = 'light',
  Dark = 'dark',
  Auto = 'auto'
}

// 类型别名
type EventCallback = (event: string, data?: any) => void
type ComponentState = 'loading' | 'success' | 'error'

// 泛型函数
function createArray<T>(length: number, value: T): T[] {
  const result: T[] = []
  for (let i = 0; i < length; i++) {
    result.push(value)
  }
  return result
}

// 装饰器函数
@Builder
function CustomButton(text: string, onClick: () => void) {
  Button(text)
    .width('100%')
    .height(44)
    .backgroundColor('#007DFF')
    .borderRadius(8)
    .onClick(onClick)
}

// 样式装饰器
@Styles
function cardStyle() {
  .backgroundColor('#FFFFFF')
  .borderRadius(12)
  .padding(16)
  .shadow({
    radius: 8,
    color: '#00000020',
    offsetX: 0,
    offsetY: 2
  })
}

// 扩展装饰器
@Extend(Text)
function titleText() {
  .fontSize(18)
  .fontWeight(FontWeight.Bold)
  .fontColor('#333333')
}

// 入口组件
@Entry
@Component
struct Index {
  @State currentTheme: Theme = Theme.Light
  @State userInfo: UserInfo = {
    name: '用户',
    age: 25
  }

  build() {
    Column() {
      MainPage({ title: '主页面' })
    }
    .width('100%')
    .height('100%')
  }
}

// 导出默认组件
export default Index

/* 
 * 多行注释测试
 * 支持各种语法高亮
 * 包括装饰器、组件、状态管理等
 */

// 模板字符串测试
const templateString = `
  当前主题: ${Theme.Light}
  用户信息: ${JSON.stringify({ name: '测试', age: 30 })}
  计算结果: ${1 + 2 * 3}
`

// 正则表达式
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
const phoneRegex = /^1[3-9]\d{9}$/

// 数字字面量
const decimal = 123.456
const hex = 0xFF
const binary = 0b1010
const octal = 0o777
const scientific = 1.23e-4
