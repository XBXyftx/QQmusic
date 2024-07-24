interface zhongYangSVG{
  img:Resource
  text:string
}

@Entry
@Component
struct Index {
  @State ZYSVG:zhongYangSVG[]=[
    {img:$rawfile('meirituijian.svg'),text:'每日推荐'},
    {img:$rawfile('sirenfm.svg'),text:'私人FM'},
    {img:$rawfile('gedan.svg'),text:'歌单'},
    {img:$rawfile('paihangbang.svg'),text:'排行榜'},
    {img:$rawfile('youshengshu.svg'),text:'有声书'},
  ]

  build() {
    //根组件
    Column({space:20}) {

      //置顶栏
      Row({space:10}){

        Image($rawfile('sanxian.svg'))
          .width(30)

        //中间搜索栏外层组件
        Row(){
          Image($rawfile('sousuo.svg'))
            .width(20)
          TextInput({placeholder:'拥抱的梦幻 梅艳芳'})
            .placeholderColor('#ccc')
            .backgroundColor(Color.Transparent)
        }
        .padding({left:10})
        .border({
          width:1,
          color:'#ccc',
          radius:20
        })
        .layoutWeight(1)

        Image($rawfile('miaofei.svg'))
          .width(30)
          .margin({left:10})

        Image($rawfile('maikefeng.svg'))
          .width(30)
          .margin({left:10})
      }
      .width('100%')

      Image($rawfile('m1.png'))
        .width('100%')
        .borderRadius(20)

      //中央SVG列表
      Row(){
        ForEach(this.ZYSVG,(item:zhongYangSVG,index)=>{
          Column({space:5}){
            Image(item.img)
              .width(40)
            Text(item.text)
          }
        })
      }
      .width('100%')
      .padding({left:5,right:5})
      .justifyContent(FlexAlign.SpaceBetween)
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