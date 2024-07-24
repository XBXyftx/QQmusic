interface zhongYangSVG{
  img:Resource
  text:string
}
interface tuiJianGeDan{
  img:Resource
  text:string
}
interface yiMiaoLunXian{
  img:Resource
  name:string
  text:string
  writer:string
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

  @State YMLX:yiMiaoLunXian[]=[
    {img:$rawfile('listitem1.png'),name:'富士山下',text:'超70%人播放',writer:'陈奕迅'},
    {img:$rawfile('listitem2.png'),name:'十年',text:'昨日十万播放',writer:'陈奕迅'},
    {img:$rawfile('listitem3.png'),name:'大鱼',text:'百万红心',writer:'周深'},
    {img:$rawfile('listitem4.png'),name:'太多',text:'超80%人播放',writer:'陈冠蒲'},
    {img:$rawfile('listitem5.png'),name:'大海',text:'亿万播放',writer:'陈雨生'},
    {img:$rawfile('listitem6.png'),name:'挪威的森林',text:'百万收藏',writer:'伍佰'},
  ]

  @State LDGD:tuiJianGeDan[]=[
    {img:$rawfile('music5.png'),text:'纪念一代歌后梅艳芳60周年'},
    {img:$rawfile('music6.png'),text:'追忆张国荣-哥哥的温柔'},
    {img:$rawfile('music7.png'),text:'情歌王子汪苏泷青春依旧'},
    {img:$rawfile('music8.png'),text:'为爱痴狂，却到不了彼岸'},
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
          Column({space:10}){
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

            List({space:20}){

              ForEach(this.YMLX,(item:yiMiaoLunXian,index:number)=>{
                ListItem(){
                  Row({space:10}){
                    Image(item.img)
                      .width(70)
                      .borderRadius(10)
                    Column({space:5}){
                      Text(item.name)
                        .fontSize(18)
                      Row({space:5}){
                        Text(item.text)
                          .fontSize(12)
                          .padding(5)
                          .backgroundColor('#f4e7e8')
                          .fontColor('#e65f58')
                        Text(item.writer)
                          .fontSize(12)
                      }
                    }
                    .alignItems(HorizontalAlign.Start)
                    .margin({right:10})
                    Row(){
                      Image($rawfile('bofang.svg'))
                        .width(30)
                    }
                    .layoutWeight(1)
                    .justifyContent(FlexAlign.End)
                  }
                  .margin({bottom:20})
                  .width(270)
                }
              })

            }
            .scrollBar(BarState.Off)
            .lanes(3)
            .listDirection(Axis.Horizontal)

          }
          .width('100%')
        }
        //雷达歌单
        ListItem(){
          Column({space:10}){
            Row(){
              Text('雷达歌单 只为更懂你 >')
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
              Image($rawfile('sandian.svg'))
                .width(20)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

            List({space:10}){

              ForEach(this.LDGD,(item:tuiJianGeDan,index)=>{
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
            .scrollBar(BarState.Off)
            .width('100%')
            .listDirection(Axis.Horizontal)

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