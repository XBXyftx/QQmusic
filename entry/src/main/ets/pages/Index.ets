interface zhongYangSVG{
  img:Resource
  text:string
}
interface tuiJianGeDan{
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

  @State TJGD:tuiJianGeDan[]=[
    {img:$rawfile('music1.png'),text:'纪念一代歌后梅艳芳60周年'},
    {img:$rawfile('music2.png'),text:'追忆张国荣-哥哥的温柔'},
    {img:$rawfile('music3.png'),text:'情歌王子汪苏泷青春依旧'},
    {img:$rawfile('music4.png'),text:'为爱痴狂，却到不了彼岸'},
  ]

  build() {
    //根组件
    Column() {

      List({space:20}){
        //置顶栏
        ListItem(){
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
        }
        //图片
        ListItem(){
          Image($rawfile('m1.png'))
            .width('100%')
            .borderRadius(20)
        }
        //中央SVG列表
        ListItem(){
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
        //推荐歌单
        ListItem(){
          Column({space:5}){

            Row(){
              Text('推荐歌单 >')
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
              Image($rawfile('sandian.svg'))
                .width(20)
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .width('100%')

            List({space:10}){

              ForEach(this.TJGD,(item:tuiJianGeDan,index)=>{
                ListItem(){
                  Column({space:5}){
                    Image(item.img)
                      .width(120)
                      .borderRadius(10)
                    Text(item.text)
                      .width(115)
                  }
                }

              })

            }
            .listDirection(Axis.Horizontal)
            .width('100%')
            .scrollBar(BarState.Off)

          }
        }
        //一秒沦陷
        ListItem(){
          Column(){
            //汉字标题
            Row(){
              Row({space:10}){
                Image($rawfile('refresh.svg'))
                  .width(20)
                Text('一秒沦陷 华语经典')
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                //播放按钮
                Row({space:5}){
                  Image($rawfile('bo.svg'))
                    .width(12)
                    .fillColor(Color.Black)
                  Text('播放')
                    .fontSize(14)
                }
                .padding(5)
                .borderRadius(6)
                .backgroundColor('#ffe1e1e5')
              }
              Image($rawfile('sandian.svg'))
                .width(20)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .width('100%')
        }

      }
      .scrollBar(BarState.Off)
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