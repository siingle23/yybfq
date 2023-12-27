@Entry
@Component
export struct VideoPlayer{
  private controller:VideoController | undefined;
  //private previewUris: Resource = $r('app.rawfile.ayay');
  private innerResource: Resource = $rawfile('ayay.mp4');
  build(){
    Column() {
      Video({
        src: this.innerResource,
        //previewUri: this.previewUris,
        controller: this.controller
      })
    }
  }
}