@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    //根组件
    Column() {
      //置顶栏
      Row({space:10}){
        Image($rawfile('sanxian.svg'))
          .width(30)
        //中间搜索栏外层组件
        Row(){
          Image($rawfile('sousuo.svg'))
            .width(20)
        }
        .padding(10)
        .border({
          width:1,
          color:'#ccc',
          radius:20
        })
        .layoutWeight(1)
      }
      .width('100%')
    }
    .padding(10)
    .height('100%')
    .width('100%')
    .linearGradient({
      direction:GradientDirection.LeftBottom,
      colors:[['#ebe5fa',0],['#f8f9fc',1]]
    })
  }
}