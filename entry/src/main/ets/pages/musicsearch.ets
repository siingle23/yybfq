import http from '@ohos.net.http'

@Entry
@Component
export  struct musicsearch {

  @State url: string = ""

  build() {
    Column() {
      Column() {
        Search({value: "我的收藏"})
          .width("100%")
          .height("40vp")
          .offset({ x: "0vp", y: "-331.23vp" })
      }

      Button("搜索")
        .onClick(() => {
          let httpRequest = http.createHttp();

          let url = "https://dataiqs.com/api/netease/music/?type=songid&id=2026224214";
          let promise = httpRequest.request(// 请求url地址
            url,
            {
              // 请求方式
              method: http.RequestMethod.GET,
            }
          )
          promise.then((data) => {
            if (data.responseCode === http.ResponseCode.OK) {
              console.info('Result:' + data.result);
              console.info('code:' + data.responseCode);
              this.url = JSON.parse(`${data.result}`).song_url;
            }
          }).catch((err) => {
            console.info('error:' + JSON.stringify(err));
          });
        })

      Web({
        src: this.url,
        controller: new WebController
      }
      )
    }
    .width("100%")
  .height("100%")
}
}