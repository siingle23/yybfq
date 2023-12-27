@Entry
@Component
struct WebComponent {
  controller: WebController = new WebController();
  build() {
    Column() {
      Web({ src: 'https://i.y.qq.com/v8/playsong.html?songmid=000w9cwl1WyOwt&ADTAG=myqq&from=myqq&channel=10007100', controller: this.controller })
    }
  }
}