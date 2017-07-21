# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  {
  fname: "Logan",
  lname: "Baker",
  email: "lobaker13@gmail.com",
  password: "password",
  phone: "012-345-6789",
  admin: true
},
  {
  fname: "Hans",
  lname: "Palacios",
  email: "hanssebastian.p@gmail.com",
  password: "password",
  phone: "012-345-6789",
  admin: true
}
  ])


Artist.create([
  {
    name: "Katsushika Hokusai",
    bio: "Japanese artist, ukiyo-e painter and printmaker of the Edo period. He was influenced by Sesshū Tōyō and other styles of Chinese painting.",
    dob: 1760,
    dod: 1849
  },
  {
    name: "Takashi Murakami",
    bio: "Takashi Murakami is a Japanese contemporary artist. He works in fine arts media as well as commercial media and is known for blurring the line between high and low arts.",
    dob: 1962,
    dod: 2050
  },
  {
    name: "Utamaro Kitagawa",
    bio: "Utamaro was a Japanese artist. He is one of the most highly regarded designers of ukiyo-e woodblock prints and paintings, and is best known for his bijin ōkubi-e 'large-headed pictures of beautiful women' of the 1790s.",
    dob: 1753,
    dod: 1806
  },
  {
    name: "Utagawa Hiroshige",
    bio: "Japanese ukiyo-e artist, considered the last great master of that tradition.",
    dob: 1797,
    dod: 1858
  },
  {
    name: "Hasegawa Tōhaku",
    bio: "Hasegawa Tōhaku was a Japanese painter and founder of the Hasegawa school of Japanese painting during the Azuchi–Momoyama period.",
    dob: 1539,
    dod: 1610
  },
  {
    name: "Tomioka Tessai",
    bio: "Tomioka Tessai was the pseudonym for a painter and calligrapher in imperial Japan. He is regarded as the last major artist in the Bunjinga tradition and one of the first major artists of the Nihonga style.",
    dob: 1837,
    dod: 1924
  },
  {
    name: "Sesshū Tōyō",
    bio: "Sesshū Tōyō was the most prominent Japanese master of ink and wash painting from the middle Muromachi period. He was born into the samurai Oda family, then brought up and educated to become a Rinzai Zen Buddhist priest.",
    dob: 1420,
    dod: 1506
  },
  {
    name: "Tawaraya Sōtatsu",
    bio: "Tawaraya Sōtatsu was a Japanese artist and also the co-founder of the Rimpa school of Japanese painting.",
    dob: 1570,
    dod: 1643
  },
  {
    name: "Tenshō Shūbun",
    bio: "Tenshō Shūbun was a Japanese Zen Buddhist monk and painter of the Muromachi period.",
    dob: 1414,
    dod: 1463
  }
])

Art.create([
  {
<<<<<<< HEAD
    name: "This is an image",
    completed_at: 2017,
    user_id: 1,
    artist_id: 1
    #image: File.new("#{rails.root}/path/to/image/my_image.jpg")
=======
    name: "Under the Wave off Kanagawa",
    completed_at: 1832,
    artist_id: 1,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Hokusai.jpg")
  },
  {
    name: "Memorial portrait of Utagawa Hiroshige",
    completed_at: 1858,
    artist_id: 4,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Hiroshige.jpg")
  },
  {
    name: "Night Rain",
    completed_at: 1804,
    artist_id: 3,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Kitagawa.jpg")
  },
  {
    name: "Of Chinese Lions, Peonies, Skulls and Fountains",
    completed_at: 2012,
    artist_id: 2,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Murakami.jpg")
  },
  {
    name: "Reaching the Source(Ten Ox Herding Pictures)",
    completed_at: 1982,
    artist_id: 9,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Shūbun.jpg")
  },
  {
    name: "Wind God and Thunder God",
    completed_at: 1650,
    artist_id: 8,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Sōtatsu.jpg")
  },
  {
    name: "Mt. Fuji",
    completed_at: 1898,
    artist_id: 6,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Tessai.jpg")
  },
  {
    name: "Tigers and Bamboo",
    completed_at: 1590,
    artist_id: 5,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Tōhaku.jpg")
  },
  {
    name: "Winter landscape",
    completed_at: 1486,
    artist_id: 7,
    user_id: 2,
    image: File.new("#{Rails.root}/images/Tōyō.jpg")
>>>>>>> 400e1a7757eec800fea015157a87389c3db4e29e
  }
])

Keyword.create([
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  #
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },
  # {
  #   name: "",
  #   category: :movement
  # },

  {
    name: "painting",
    category: :medium
  },
  {
    name: "pottery",
    category: :medium
  },
  {
    name: "pottery",
    category: :medium
  },
  {
    name: "pottery",
    category: :medium
  },
  {
    name: "sculpture",
    category: :medium
  },
  {
    name: "Formative",
    category: :period
  },
  {
    name: "Asuka",
    category: :period
  },
  {
    name: "Hakuho",
    category: :period
  },
  {
    name: "Nara",
    category: :period
  },
  {
    name: "Heian",
    category: :period
  },
  {
    name: "Kamakura",
    category: :period
  },
  {
    name: "Muromachi",
    category: :period
  },
  {
    name: "Azuchi-Momoyama",
    category: :period
  },
  {
    name: "Tokugawa",
    category: :period
  },
  {
    name: "Modern",
    category: :period
  }
])



Art.find(1).keywords << Keyword.find(1) << Keyword.find(7)
# arts[0].keywords << Keyword.find(2)
#
#
# ArtKeyword.create([
#   {
#     keyword_id: 1,
#     art_id: 1
#   },
#   {
#     keyword_id: 2,
#     art_id: 1
#   },
# ])
