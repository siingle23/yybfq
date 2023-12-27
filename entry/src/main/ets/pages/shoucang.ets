@Entry
@Component
export  struct shoucang {

  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  build() {
    Column() {
      Column() {
        Search({value: "我的收藏"})
          .width("100%")
          .height("40vp")
          .offset({ x: "0vp", y: "-331.23vp" })
      }
      .width("100%")
      .height("100%")
      .backgroundImage($r('app.media.bj4'))
      .justifyContent(FlexAlign.Center)
      Column() {
        List({ space: 10 }) {
          ForEach(this.arr, (item: number) => {
            ListItem() {
              Text(`${item}`)
                .width('100%')
                .height(100)
                .fontSize(20)
                .fontColor(Color.White)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
                .backgroundColor(0x007DFF)
            }
          }, item => item)
        }
      }
      .padding(12)
      .height('100%')
      .backgroundColor(0xF1F3F5)
    }
    .width("100%")
    .height("100%")

  }
}