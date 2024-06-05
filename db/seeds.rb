User.create(
  email: "sample@sanple.com", password: "qqqqqq11", nickname: "sample", name: "sample"
)

items = [
  { name: "青龍乃舞", name_kana: "せいりゅうのまい", category: "純米吟醸", alcohol: "15%", sake_level: "+3", teste: "やや甘め", price: "1,800", explain: "青龍乃舞は、山奥の清らかな水を使用し、伝統的な手法で丁寧に仕込まれた純米吟醸酒です。香り高く、繊細な味わいが特徴で、冷やして飲むとその魅力が最大限に引き出されます。特に魚介類や淡白な料理との相性が抜群で、食中酒としてもおすすめです。", image: "sake_bin.jpg", prefecture: "山形県" ,user_id: "1"},
  { name: "紅葉の夢", name_kana: "もみじのゆめ", category: "大吟醸", alcohol: "16%", sake_level: "-1", teste: "甘め", price: "3,500", explain: "紅葉の夢は、厳選された米と名水を使用し、低温でじっくり発酵させた大吟醸酒です。秋の紅葉をイメージしたラベルが美しく、ギフトにも最適です。口に含むと広がる豊かな香りと上質な甘みが魅力で、特別な席での乾杯やデザート酒としても楽しめます。", image: "sake-momiji.jpg", prefecture: "秋田県" ,user_id: "1"},
  { name: "冬月", name_kana: "ふゆつき", category: "純米酒", alcohol: "14%", sake_level: "+5", teste: "辛口", price: "1,200", explain: "冬月は、冬の冷たい空気の中で醸造された純米酒で、力強い味わいとキレの良さが特徴です。燗酒としても楽しめるため、寒い季節にぴったりの一品です。肉料理や濃い味付けの料理との相性も良く、食卓を豊かに彩ります。", image: "sake-huyu.jpg", prefecture: "北海道" ,user_id: "1"},
  { name: "春霞", name_kana: "はるがすみ", category: "吟醸酒", alcohol: "15%", sake_level: "+1", teste: "やや甘め", price: "1,600", explain: "春霞は、春の訪れを感じさせる爽やかな吟醸酒です。フレッシュな酸味と控えめな甘みが特徴で、冷酒として楽しむと一層美味しさが際立ちます。軽やかな口当たりは、サラダや和風前菜、鶏肉料理などとの相性が良く、食卓に春の風を吹き込みます。", image: "sake-haru.jpg", prefecture: "福島県" ,user_id: "1"},
  { name: "風林火山", name_kana: "ふうりんかざん", category: "純米酒", alcohol: "15%", sake_level: "+6", teste: "辛口", price: "2,400", explain: "風林火山は、その名の通り力強さと静けさを併せ持つ純米酒です。キレの良い辛口が特徴で、冷やしても燗にしても楽しめます。焼き鳥や揚げ物など、脂っこい料理と相性が良く、食中酒としても優れています。", image: "sake-huurinnkazann.jpg", prefecture: "山梨県" ,user_id: "1"},
  { name: "月夜の夢", name_kana: "つきよのゆめ", category: "純米吟醸", alcohol: "15%", sake_level: "-3", teste: "甘め", price: "2,000", explain: "月夜の夢は、月の夜の静寂を思わせるような純米吟醸酒です。フルーティな香りと柔らかな味わいが特徴で、冷酒として楽しむと一層美味しさが引き立ちます。鶏料理や和風サラダ、軽めの前菜とよく合います。", image: "sake_bin.jpg", prefecture: "新潟県" ,user_id: "1"},
  { name: "太陽の恵", name_kana: "たいようのめぐみ", category: "大吟醸", alcohol: "16%", sake_level: "+0", teste: "やや甘め", price: "3,800", explain: "太陽の恵は、太陽の光をたっぷりと浴びた米を使用した大吟醸酒です。フルーティな香りと味わいが特徴で、冷酒としてそのまま飲むのがおすすめです。白身魚の刺身や軽めのチーズ、フルーツとの相性が抜群です。", image: "sake-taiyou.jpg", prefecture: "岩手県" ,user_id: "1"},
  { name: "星夜の詩", name_kana: "ほしよのうた", category: "純米大吟醸", alcohol: "16%", sake_level: "+2", teste: "やや辛口", price: "4,500", explain: "星夜の詩は、星空の美しさを詠ったような純米大吟醸酒です。繊細で優雅な味わいが特徴で、特別な日のディナーにぴったりです。冷酒として楽しむことで、その香りと味わいが最大限に引き立ちます。寿司や刺身、高級な和食とよく合います。", image: "sake-hosi.jpg", prefecture: "石川県" ,user_id: "1"},
  { name: "山風", name_kana: "やまかぜ", category: "純米酒", alcohol: "14%", sake_level: "+5", teste: "辛口", price: "1,500", explain: "山風は、山の風のように爽やかで力強い純米酒です。しっかりとした辛口の味わいが特徴で、冷やしても燗にしても楽しめます。肉料理や炒め物、濃い味付けの料理と相性が良く、食卓を賑やかにします。", image: "sake-yama.jpg", prefecture: "長野県" ,user_id: "1"},
  { name: "桜華爛漫", name_kana: "おうかろまん", category: "純米大吟醸", alcohol: "16%", sake_level: "-1", teste: "甘め", price: "3,200", explain: "桜華爛漫は、春の桜の美しさをイメージした純米大吟醸酒です。選び抜かれた米と名水を使用し、低温でじっくりと発酵させることで、豊かな香りと繊細な味わいを実現しました。冷酒として楽しむと、その香りと味わいが最大限に引き立ちます。特に、刺身や寿司、軽いデザートとよく合い、特別な席での乾杯に最適です。", image: "sake-haru.jpg", prefecture: "青森県" ,user_id: "1"},
]



items.each do |item_data|
  Item.create(
    name: item_data[:name],
    name_kana: item_data[:name_kana],
    category: item_data[:category],
    alcohol: item_data[:alcohol],
    sake_level: item_data[:sake_level],
    teste: item_data[:teste],
    price: item_data[:price],
    explain: item_data[:explain],
    image: item_data[:image],
    prefecture: item_data[:prefecture],
    user_id: item_data[:user_id],
  )
end

