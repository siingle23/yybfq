@Entry
@Component
export  struct personal {
  build() {
    Column() {
      Column() {
        Image($r('app.media.tx'))
          .width("150.93vp")
          .height("140.02vp")
          .offset({ x: "-0.2vp", y: "-214.62vp" })
        Text("大雪伴银霜")
          .width("200vp")
          .height("60vp")
          .offset({ x: "20.14vp", y: "-204.1vp" })
          .fontColor(Color.White)
          .fontSize("30fp")
        Button("我的关注")
          .width("187.27vp")
          .height("45.47vp")
          .offset({ x: "-0.03vp", y: "-23.59vp" })
          .backgroundColor(Color.White)
          .fontColor(Color.Red)
        Button("乐库")
          .width("189.09vp")
          .height("45.47vp")
          .backgroundColor(Color.White)
          .fontColor(Color.Red)
        Button("历史歌曲")
          .width("201.81vp")
          .height("49.11vp")
          .offset({ x: "-0.09vp", y: "25.89vp" })
          .backgroundColor(Color.White)
          .fontColor(Color.Red)
      }
      .width("100%")
      .height("100%")
      .backgroundImage($r('app.media.bj2'))
      .justifyContent(FlexAlign.Center)
      Button("乐库")
        .width("174.55vp")
        .height("43.65vp")
        .backgroundColor(Color.White)
        .fontColor(Color.Red)
    }
    .width("100%")
    .height("100%")
  }
}