struct HomePageView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(firstSectionPages) { page in
                        NavigationLink {
                            page.destination
                                .navigationTitle(page.title)
                        } label: {
                            CostumizedNavList(emoji: page.emoji, label: page.title, color: page.color)
                        }
                    }
                }
                
                Section {
                    ForEach(secondSectionPages) { page in
                        NavigationLink {
                            page.destination
                                .navigationTitle(page.title)
                        } label: {
                            CostumizedNavList(emoji: page.emoji, label: page.title, color: page.color)
                        }
                    }
                }
            }
        }
    }
}
