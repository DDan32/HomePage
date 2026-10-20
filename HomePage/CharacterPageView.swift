import SwiftUI

// MARK: - Data

struct Talent: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let iconURL: URL?
    let description: String
}

struct Constellation: Identifiable {
    let id = UUID()
    let level: Int
    let name: String
    let iconURL: URL?
    let description: String
}

/// 基尼奇的資料，取自 HoYoWiki（entry 6317）。
enum Kinich {
    static let name = "基尼奇"
    static let title = "回火之狩"
    static let tagline = "維茨特蘭的獵龍人，精於度量代價。"
    static let rarity = 5
    static let elementIconURL = URL(string: "https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/03/27/bda7c6cf71ea059c6abc086405a7cdd5_1717146848708050949.png")

    static let baseInfo: [(String, String)] = [
        ("地區", "納塔"),
        ("所屬", "維茨特蘭"),
        ("神之眼", "草"),
        ("武器", "雙手劍"),
        ("生日", "11月11日"),
        ("命之座", "幻瑞獸座"),
        ("特殊料理", "獵龍者的犒賞"),
        ("實裝版本", "5.0"),
        ("華語 CV", "斑马&弭洋"),
        ("日語 CV", "杉山紀彰&竹内順子"),
        ("英語 CV", "John Patneaude & Abby Espiritu"),
        ("韓語 CV", "姜聲宇&朴利娜")
    ]

    /// Lv.90 突破後的基礎數值。
    static let stats: [(String, String)] = [
        ("基礎生命值", "13772"),
        ("基礎攻擊力", "407"),
        ("基礎防禦力", "859"),
        ("暴擊傷害", "38.4%")
    ]

    private static let iconBase = "https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/09/12/"

    static let talents: [Talent] = [
        Talent(name: "普通攻擊·夜陽鬥技", category: "普通攻擊",
               iconURL: URL(string: iconBase + "1d3f0f9fd865748a9d08ae6ed24ba848_205652160761151852.png"),
               description: "進行至多三段的連續攻擊。透過元素戰技「懸獵·遊騁高狩」進行空中擺盪後，在落地之前能在空中進行一次普通攻擊。"),
        Talent(name: "懸獵·遊騁高狩", category: "元素戰技",
               iconURL: URL(string: iconBase + "45ed3660db18d8d3e647122308d5caa6_6667233131438656072.png"),
               description: "以狩獵巨獸的心得，快速移動或對敵人發起攻擊。若身邊存在敵人，會將鉤索連接在目標上，進入夜魂加持狀態；否則，會向前方發射鉤索進行空中擺盪。"),
        Talent(name: "向偉大聖龍致意", category: "元素爆發",
               iconURL: URL(string: iconBase + "4f0c8f9c8da5a12625020c588d6698de_4052043803273203611.png"),
               description: "（有限度、有條件、有節制地，依照契約，部分、暫時）解放「聖龍阿喬」的力量，造成具有夜魂性質的草元素範圍傷害。"),
        Talent(name: "噩地的代價", category: "固有天賦",
               iconURL: URL(string: iconBase + "842f6540cef4f9630e94f03a2e624d65_6590608237672237654.png"),
               description: "夜魂加持狀態下，元素戰技命中的敵人將陷入「噩地」狀態，在受到燃燒或烈綻放反應傷害時，為基尼奇產生7點夜魂值。"),
        Talent(name: "焰靈的契約", category: "固有天賦",
               iconURL: URL(string: iconBase + "130db384ec84fd949827b62f72c9c9b9_7000091207903149323.png"),
               description: "隊伍中附近的角色觸發「夜魂迸發」後，為基尼奇賦予一層「獵人心得」，每層使迴獵貫鱗炮造成的傷害基於攻擊力的320%提高。"),
        Talent(name: "疾行的使令", category: "固有天賦",
               iconURL: URL(string: iconBase + "e4222379033f55dd59188aaec5b97329_4891779689839072506.png"),
               description: "在納塔與部分採集物互動能使隊伍中自己的角色移動速度提高15%，持續10秒，並在小地圖上顯示周圍納塔區域特產的位置。")
    ]

    static let constellations: [Constellation] = [
        Constellation(level: 1, name: "七鸚之喙",
                      iconURL: URL(string: iconBase + "d5d462d321284bf49631663f11cc1732_8145546083885417128.png"),
                      description: "空中擺盪落地後，移動速度提升30%，持續6秒。此外，迴獵貫鱗炮的暴擊傷害提升100%。"),
        Constellation(level: 2, name: "星虎之掌",
                      iconURL: URL(string: iconBase + "6b8bcffd57bc1ea2f8b434077ac3df96_2668276307576306642.png"),
                      description: "元素戰技命中敵人時，使其草元素抗性降低30%，持續6秒。進入夜魂加持後的首次迴獵貫鱗炮範圍提升，傷害提升100%。"),
        Constellation(level: 3, name: "原鱷之爪",
                      iconURL: URL(string: iconBase + "45ed3660db18d8d3e647122308d5caa6_144276801572957756.png"),
                      description: "懸獵·遊騁高狩的技能等級提高3級。至多提升至15級。"),
        Constellation(level: 4, name: "蜂鳥之羽",
                      iconURL: URL(string: iconBase + "42eade4ba885e8f80ba38affd544f735_3326949564466618799.png"),
                      description: "夜魂加持狀態下，環繞射擊或施放迴獵貫鱗炮後恢復5點元素能量。此外，向偉大聖龍致意造成的傷害提升70%。"),
        Constellation(level: 5, name: "吼猴之尾",
                      iconURL: URL(string: iconBase + "4f0c8f9c8da5a12625020c588d6698de_6086493432553208978.png"),
                      description: "向偉大聖龍致意的技能等級提高3級。至多提升至15級。"),
        Constellation(level: 6, name: "瑞獸之形",
                      iconURL: URL(string: iconBase + "fd944f64ae241a22114ba8df98190635_5835907079438738409.png"),
                      description: "迴獵貫鱗炮命中敵人後，將在敵人間彈跳一次，造成基尼奇攻擊力700%的草元素傷害。")
    ]

    static let story = """
    納塔是人龍共生的國度，互依互存的狀態延續了許多年月。然而，這不代表每條靠近人類的龍都抱有善意。因此，熟識龍類弱點的「獵龍人」應運而生，而基尼奇就是其中翹楚。

    他彷彿天生的獵殺者，穩定、直接、高效，注視獵物的目光與剔骨刀一樣鋒利。沒什麼能改變他的信條：萬事萬物皆有代價。

    如果非得讓他為自己做一番辯白，也不是不可能，只是他一定會先攤開掌心問：「你願意出什麼價？」
    """
}

// MARK: - Page

struct CharacterPageView: View {
    private let headerHeight: CGFloat = 520
    private let dendroGreen = Color(red: 0.55, green: 0.85, blue: 0.35)
    private let pageBackground = Color(red: 0.08, green: 0.09, blue: 0.11)

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                stretchyHeader
                VStack(alignment: .leading, spacing: 32) {
                    infoSection
                    statsSection
                    talentsSection
                    constellationsSection
                    storySection
                }
                .padding(20)
                .background(pageBackground)
            }
        }
        .background(pageBackground)
        .ignoresSafeArea(edges: .top)
        .preferredColorScheme(.dark)
    }

    // MARK: Stretchy header

    /// 頂部大圖：往下拉時圖片會跟著拉伸放大，往上捲時有視差效果。
    private var stretchyHeader: some View {
        GeometryReader { geo in
            // minY > 0 代表使用者正在往下拉（超出頂端）
            let minY = geo.frame(in: .scrollView).minY
            let pull = max(minY, 0)
            let scrolledUp = max(-minY, 0)

            ZStack(alignment: .bottomLeading) {
                LinearGradient(
                    colors: [dendroGreen.opacity(0.55), pageBackground],
                    startPoint: .top,
                    endPoint: .bottom
                )

                Image("Kinich")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: headerHeight + pull)
                // 往上捲時讓圖片移動得比內容慢，產生視差
                .offset(y: scrolledUp * 0.4)
                .clipped()

                // 底部漸層，讓圖片自然融入頁面背景
                LinearGradient(
                    colors: [.clear, pageBackground],
                    startPoint: .center,
                    endPoint: .bottom
                )

                headerTitle
                    .padding(20)
                    .opacity(1 - min(scrolledUp / 250, 1))
            }
            .frame(width: geo.size.width, height: headerHeight + pull)
            .clipped()
            // 往下拉時把整個 header 往上移，讓它固定貼齊螢幕頂端並向下延伸
            .offset(y: -pull)
        }
        .frame(height: headerHeight)
    }

    private var headerTitle: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 2) {
                ForEach(0..<Kinich.rarity, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
            }
            .font(.caption)

            HStack(spacing: 8) {
                Text(Kinich.name)
                    .font(.system(size: 44, weight: .bold))
                remoteIcon(Kinich.elementIconURL, size: 32)
            }

            Text(Kinich.title)
                .font(.title3.weight(.semibold))
                .foregroundStyle(dendroGreen)

            Text(Kinich.tagline)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .foregroundStyle(.white)
    }

    // MARK: Sections

    private var infoSection: some View {
        section("屬性") {
            VStack(spacing: 0) {
                ForEach(Kinich.baseInfo, id: \.0) { key, value in
                    HStack(alignment: .top) {
                        Text(key)
                            .foregroundStyle(.secondary)
                            .frame(width: 90, alignment: .leading)
                        Text(value)
                        Spacer(minLength: 0)
                    }
                    .font(.subheadline)
                    .padding(.vertical, 10)

                    if key != Kinich.baseInfo.last?.0 {
                        Divider()
                    }
                }
            }
            .padding(.horizontal, 16)
            .card()
        }
    }

    private var statsSection: some View {
        section("Lv.90 基礎數值") {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                ForEach(Kinich.stats, id: \.0) { key, value in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(key)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text(value)
                            .font(.title2.weight(.bold))
                            .foregroundStyle(dendroGreen)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(16)
                    .card()
                }
            }
        }
    }

    private var talentsSection: some View {
        section("天賦") {
            VStack(spacing: 12) {
                ForEach(Kinich.talents) { talent in
                    HStack(alignment: .top, spacing: 14) {
                        remoteIcon(talent.iconURL, size: 48)
                            .padding(6)
                            .background(Circle().fill(.white.opacity(0.08)))

                        VStack(alignment: .leading, spacing: 4) {
                            Text(talent.category)
                                .font(.caption.weight(.semibold))
                                .foregroundStyle(dendroGreen)
                            Text(talent.name)
                                .font(.headline)
                            Text(talent.description)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        Spacer(minLength: 0)
                    }
                    .padding(16)
                    .card()
                }
            }
        }
    }

    private var constellationsSection: some View {
        section("命之座 · 幻瑞獸座") {
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(Kinich.constellations) { constellation in
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                remoteIcon(constellation.iconURL, size: 40)
                                Spacer()
                                Text("C\(constellation.level)")
                                    .font(.caption.weight(.bold))
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Capsule().fill(dendroGreen.opacity(0.25)))
                            }
                            Text(constellation.name)
                                .font(.headline)
                            Text(constellation.description)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                            Spacer(minLength: 0)
                        }
                        .padding(16)
                        .frame(width: 240, height: 200, alignment: .topLeading)
                        .card()
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.hidden)
        }
    }

    private var storySection: some View {
        section("角色詳細") {
            Text(Kinich.story)
                .font(.body)
                .lineSpacing(6)
                .foregroundStyle(.white.opacity(0.85))
                .padding(16)
                .card()
        }
    }

    // MARK: Helpers

    private func section<Content: View>(_ title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title2.weight(.bold))
            content()
        }
    }

    private func remoteIcon(_ url: URL?, size: CGFloat) -> some View {
        AsyncImage(url: url) { image in
            image.resizable().scaledToFit()
        } placeholder: {
            Circle().fill(.white.opacity(0.1))
        }
        .frame(width: size, height: size)
    }
}

private extension View {
    /// 統一的卡片外觀。
    func card() -> some View {
        background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(.white.opacity(0.06))
        )
    }
}

#Preview {
    CharacterPageView()
}
