# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create([{
  title: 'Fly me to the moon',
  key: 'C',
  tempo: 165,
  style: 'Jazz',
  backing_track: 'http://www.youtube.com/v/watch?v=Z_5v7FjHS58',
  lyrics: "Fly me to the moon\n
Let me play among the stars\n
Let me see what spring is like on\n
A-Jupiter and Mars\n
In other words, hold my hand\n
In other words, baby, kiss me\n
\n
Fill my heart with song and let me sing for ever more\n
You are all I long for\n
All I worship and adore\n
In other words, please be true\n
In other words, I love you\n
\n
Fill my heart with song\n
Let me sing for ever more\n
You are all I long for, all I worship and adore\n
In other words, please be true\n
In other words, in other words\n
In other words\n
I love you\n"
  }])
