# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

weaver = Artist.create( name: "Weaver At The Loom", genre: "Ambient Rock", photo_url: "http://userserve-ak.last.fm/serve/500/84740927/Weaver%2BAt%2Bthe%2BLoom.png")
weaver.songs.create(title: "You Can't Evade Them.", year: 2007)
weaver.songs.create(title: "You Can't Escape Them.", year: 2007)
weaver.songs.create(title: "11 1/2 (My Favorite Age)", year: 2011)
weaver.songs.create(title: "We're Wild Animals (We Always Were)", year: 2011)


sly = Artist.create( name: "Sir Sly", genre: "Chill Ambient Electronica", photo_url: "http://thesightsandsounds.com/wp-content/uploads/2013/09/sir-sly.jpg")
sly.songs.create(title: "Where I'm Going", year: 2013)
sly.songs.create(title: "Gold", year: 2013)
sly.songs.create(title: "Found You Out", year: 2013)
sly.songs.create(title: "Ghost", year: 2013)

ring = Artist.create( name: "Purity Ring", genre: "Chill Ambient Electronica", photo_url: "https://a4-images.myspacecdn.com/images03/1/d845ec4c6ad743f8bf6467cee775f911/300x300.jpg")
ring.songs.create(title: "Fineshrine", year: 2012)
ring.songs.create(title: "Cartographist", year: 2012)
ring.songs.create(title: "Obedear", year: 2012)
ring.songs.create(title: "Crawlersout", year: 2012)