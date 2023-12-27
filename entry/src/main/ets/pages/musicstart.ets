import { personal } from './personal';
import { shoucang } from './shoucang';
import { musicsearch} from './musicsearch';
import router from '@ohos.router'
//import { musicstart} from './musicstart';


@Entry
@Component
struct TabsExample {
  @State currentIndex: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder TabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }


  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#00CB87')
        }
        .tabBar(this.TabBuilder('首页',0,$r('app.media.shouye'),$r('app.media.shouye')))

        TabContent() {
          musicsearch();
        }
        .tabBar(this.TabBuilder('搜索',1,$r('app.media.search'),$r('app.media.search')))

        TabContent() {
          shoucang();
        }
        .tabBar(this.TabBuilder('收藏',2,$r('app.media.shoucang'),$r('app.media.shoucang')))

        TabContent() {
          personal();
        }
        .tabBar(this.TabBuilder('我的',3,$r('app.media.personal'),$r('app.media.personal')))
      }
      .barWidth('100%') // 设置TabBar宽度
      .barHeight(60) // 设置TabBar高度
      .width('100%') // 设置Tabs组件宽度
      .height('100%') // 设置Tabs组件高度
      .backgroundColor(0xF5F5F5) // 设置Tabs组件背景颜色
      .onChange((index: number) => {
        console.log("index:" + index)
        this.currentIndex = index;
        console.log("index:" + this.currentIndex)
      })
    }
    .width('100%')
    .height('100%')
  }


}
