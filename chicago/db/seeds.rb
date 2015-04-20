# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

[
{:title => "Willis Tower", :photo_url => "http://www.som.com/FILE/17334/ledgeskydeckchicago_1575x900_skydeckchicago_02jpg.jpg?h=800&s=17", :admission_price => 1950, :description => "The Willis Tower, built as and still commonly referred to as Sears Tower, is a 108-story, 1,451-foot (442 m) skyscraper in Chicago, Illinois, United States.[2] At completion in 1973, it surpassed the World Trade Center towers in New York to become the tallest building in the world, a title it held for nearly 25 years. The Willis Tower is the second-tallest building in the United States and the 12th-tallest in the world. More than one million people visit its observation deck each year, making it one of Chicago's most popular tourist destinations. The structure was renamed in 2009 by the Willis Group as part of its lease on a portion of the tower's space."},
{:title => "The Field Meseum", :photo_url => "http://www.worldbestspot.com/Spotimage/field%20museum.jpg", :admission_price =>  3100, :description => "The Field Museum of Natural History, located in Chicago, Illinois, USA, is one of the largest natural history museums in the world.[2] The museum maintains its status as a premier natural history museum through the size and quality of its educational and scientific programs,[3][4] as well as due to its extensive scientific specimen and artifact collections.[5] The diverse, high quality permanent exhibitions,[6] which attract up to 2 million visitors annually, range from the earliest fossils to past and current cultures from around the world to interactive programming demonstrating today’s urgent conservation needs."},
{:title => "Meseum of Science and Industry", :photo_url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR8WJ51Fn0SyIhPYrax9tUqR97DoT9faR0Li2cJwxBKv09YSbaN", :admission_price => 150, :description => "The Museum of Science and Industry (MSI) is located in Chicago, Illinois, in Jackson Park, in the Hyde Park neighborhood between Lake Michigan and The University of Chicago. It is housed in the former Palace of Fine Arts from the 1893 World's Columbian Exposition. Initially endowed by Julius Rosenwald, the Sears, Roebuck and Company president and philanthropist, it was supported by the Commercial Club of Chicago and opened in 1933 during the Century of Progress Exposition."},
{:title => "360 Chicago", :photo_url => "http://cdn2.getyourguide.com/img/tour_img-256352-48.jpg", :admission_price => 1900, :description => "The John Hancock Center is a 100-story, 1,127-foot[6] (344 m) tall skyscraper, located at 875 North Michigan Avenue in the Streeterville area of Chicago, Illinois, United States. It was constructed under the supervision of Skidmore, Owings and Merrill,[6] with chief designer Bruce Graham and structural engineer Fazlur Khan.[7] When the building topped out on May 6, 1968,[1] it was the tallest building in the world outside New York City. It is currently the fourth-tallest building in Chicago and the seventh-tallest in the United States (after One World Trade Center, the Willis Tower, the Trump Tower Chicago, the Empire State Building, the Bank of America Tower, and the Aon Center). When measured to the top of its antenna masts, it stands at 1,506 feet (459 m).[8] The building is home to offices and restaurants, as well as about 700 condominiums, and contains the third highest residence (above adjacent ground level) in the world, after the Trump Tower (also in Chicago), and the Burj Khalifa (in Dubai).[9] The building was named for John Hancock Mutual Life Insurance Company, a developer and original tenant of the building,[10] and has the nickname Big John."},
{:title => "Adler Planetarium", :photo_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTyRPhmHdpPxXgZ-iRiCWH1fkkRkhQqqufAQ4gvR2TULYDnj2acVQ", :admission_price => 2495, :description => "The Adler Planetarium was founded in 1930 by Chicago business leader, Max Adler. It is located on the northeast tip of Northerly Island at the shore of Lake Michigan in Chicago, Illinois. The Adler is America's first planetarium and part of Chicago's Museum Campus, which includes the John G. Shedd Aquarium and The Field Museum. The Adler's mission is to inspire exploration and understanding of the Universe."}
].each do |place_hash|
	p = Place.new 
	p.title = place_hash[:title]
	p.photo_url = place_hash[:photo_url]
	p.admission_price = place_hash[:admission_price]
	p.description = place_hash[:description]
	p.save
end

Review.delete_all

