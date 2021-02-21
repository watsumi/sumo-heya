RSpec.describe SumoHeya do
  it "has a version number" do
    expect(SumoHeya::VERSION).not_to be nil
  end

  it "力士の名前を渡すと部屋名を返す" do
    sumo_heya = SumoHeya::Rikishi.find_by_shikona('白鵬')
    expect(sumo_heya).to eq [{:birthplace=>"モンゴル",
      :bunduke=>"東横綱",
      :id=>1,
      :rikishi=>"白鵬",
      :room=>"宮城野",
      :yomi=>"はくほう"}]
  end

  it "部屋の名前を渡すと所属力士の名前を返す" do
    sumo_heya = SumoHeya::Rikishi.find_by_room('鏡山')
    expect(sumo_heya).to eq [{:birthplace=>"東京都",
      :bunduke=>"西幕下十七枚目",
      :id=>104,
      :rikishi=>"竜勢",
      :room=>"鏡山",
      :yomi=>"りゅうせい"},
       {:birthplace=>"モンゴル",
      :bunduke=>"西三段目七十三枚目",
      :id=>336,
      :rikishi=>"鏡桜",
      :room=>"鏡山",
      :yomi=>"かがみおう"}]
  end

  it "出身地を渡すと力士の名前と相撲部屋を返す" do
    sumo_heya = SumoHeya::Rikishi.find_by_birthplace('ジョージア')
    expect(sumo_heya).to eq [{:birthplace=>"ジョージア",
      :bunduke=>"東前頭四枚目",
      :id=>16,
      :rikishi=>"栃ノ心",
      :room=>"春日野",
      :yomi=>"とちのしん"}]
  end
end
