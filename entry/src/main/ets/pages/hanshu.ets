import http from '@ohos.net.http';
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
  }
}).catch((err) => {
  console.info('error:' + JSON.stringify(err));
});