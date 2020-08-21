# User.destroy_all
# Book.destroy_all
# Highlight.destroy_all

user1 = User.create!(
    username: "Justin",
    password: "password"
)

books = Book.create!([
        {
            epub_file: "/alice.epub",
            image: "/Alice_in_Wonderland_cover.jpg",
            title: "Alice in Wonderland",
            location: "0",
            user_id: 1
        },
        {
            epub_file: "/karl-marx_friedrich-engels_the-communist-manifesto.epub",
            image: "/cm.jpg",
            title: "Communist Manifesto",
            location: "0",
            user_id: 1
        },
        {
            epub_file: "/mary-shelley_frankenstein.epub",
            image: "/frankenstein_image.jpg",
            title: "Frankenstein",
            location: "0",
            user_id: 1
        },
        {
            epub_file: "/charles-dickens_a-tale-of-two-cities.epub",
            image: "/2_Cities_image.jpg",
            title: "A Tale of Two Cities",
            location: "0",
            user_id: 1
        }
    ])

# highlights = Highlight.create!([
#     {
#         text: "Oh dear! Oh dear! I shall be too late!",
#         cfi_range: "epubcfi(/6/8[chapter_001]!/4/2/12,/3:61,/3:101)",
#         user_id: 1,
#         book_id: 5
#     }
# ])