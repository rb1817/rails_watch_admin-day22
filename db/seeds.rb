# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ["Horror","Thriller","Action", "Drama",
            "Comedy","Romance","SF","Adventure"]
images = %w( https://i.ytimg.com/vi/J_yjeCD87uc/maxresdefault.jpg 
             http://scent.ndsl.kr/uploadfile/ecms/media/2016/08/912db51960bb6514545195c82242b70c.jpg 
             http://image.chosun.com/sitedata/image/201709/01/2017090101966_0.jpg 
             http://ojsfile.ohmynews.com/STD_IMG_FILE/2017/0904/IE002212165_STD.jpg 
             http://file.bodnara.co.kr/logo/insidelogo.php?image=%2Fhttp%3A%2F%2Ffile.bodnara.co.kr%2Fwebedit%2Fhardward%2Fetc%2Fgamexmovie%2Fmadmax.jpg 
             http://www.kbstve.com/news/photo/201606/3185_3075_5352.jpg 
             https://i.pinimg.com/originals/3e/83/5b/3e835ba965d557563afb738a52224b69.jpg )
              
30.times do          
    Movie.create(title: Faker::Lorem.word, genre: genres.sample, director: Faker::FunnyName.name,
            actor: Faker::FunnyName.two_word_name, remote_image_path_url: images.sample,
            description: Faker::Lorem.paragraph, user_id: 1)
end