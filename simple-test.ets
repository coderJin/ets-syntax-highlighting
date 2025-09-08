// 简单的ETS测试文件
@Component
export struct HelloWorld {
  @State message: string = 'Hello World'
  
  build() {
    Column() {
      Text(this.message)
        .fontSize(24)
        .fontColor(Color.Blue)
      
      Button('Click Me')
        .onClick(() => {
          console.log('Button clicked')
        })
    }
  }
}
