# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
team_hashes = [
{ :name => "Arizona Diamondbacks" },
{ :name => "Atlanta Braves" },
{ :name => "Baltimore Orioles" },
{ :name => "Boston Red Sox" },
{ :name => "Chicago White Sox" },
{ :name => "Chicago Cubs" },
{ :name => "Cinncinnati Reds" },
{ :name => "Cleveland Indians" },
{ :name => "Colorado Rockies" },
{ :name => "Detroit Tigers" },
{ :name => "Florida Marlins" },
{ :name => "Houston Astros" },
{ :name => "Kansas City Royals" },
{ :name => "Los Angeles Angels" },
{ :name => "Los Angeles Dodgers" },
{ :name => "Milwaukee Brewers" },
{ :name => "Minnesota Twins" },
{ :name => "New York Mets" },
{ :name => "New York Yankees" },
{ :name => "Oakland Athletics" },
{ :name => "Philadelphia Phillies" },
{ :name => "Pittsburgh Pirates" },
{ :name => "San Diego Padres" },
{ :name => "San Francisco Giants" },
{ :name => "Seattle Mariners" },
{ :name => "St. Louis Cardinals" },
{ :name => "Tampa Bay Rays" },
{ :name => "Texas Rangers" },
{ :name => "Toronto Blue Jays" },
{ :name => "Washington Nationals" },
]

team_hashes.each do |team_hash|
  team = Team.new
 team.name = team_hash[:name]
  team.save
end

puts "There are now #{Team.count} teams in the database."



platform_hashes = [
{ :name => "Reddit" },
{ :name => "Twitter" },
]

platform_hashes.each do |platform_hash|
  platform = Platform.new
  platform.name = platform_hash[:name]
  platform.save
end

puts "There are now #{Platform.count} platforms in the database."



logo_hashes = [
{ :team_id => 1, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_ari_79x76.jpg" },
{ :team_id => 2, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_atl_79x76.jpg" },
{ :team_id => 3, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_bal_79x76.jpg" },
{ :team_id => 4, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_bos_79x76.jpg" },
{ :team_id => 5, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_cws_79x76.jpg" },
{ :team_id => 6, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_chc_79x76.jpg" },
{ :team_id => 7, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_cin_79x76.jpg" },
{ :team_id => 8, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_cle_79x76.jpg" },
{ :team_id => 9, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_col_79x76.jpg" },
{ :team_id => 10, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_det_79x76.jpg" },
{ :team_id => 11, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_mia_79x76.jpg" },
{ :team_id => 12, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_hou_79x76.jpg" },
{ :team_id => 13, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_kc_79x76.jpg" },
{ :team_id => 14, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_ana_79x76.jpg" },
{ :team_id => 15, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_la_79x76.jpg" },
{ :team_id => 16, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_mil_79x76.jpg" },
{ :team_id => 17, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_min_79x76.jpg" },
{ :team_id => 18, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_nym_79x76.jpg" },
{ :team_id => 19, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_nyy_79x76.jpg" },
{ :team_id => 20, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_oak_79x76.jpg" },
{ :team_id => 21, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_phi_79x76.jpg" },
{ :team_id => 22, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_pit_79x76.jpg" },
{ :team_id => 23, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_sd_79x76.jpg" },
{ :team_id => 24, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_sf_79x76.jpg" },
{ :team_id => 25, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_sea_79x76.jpg" },
{ :team_id => 26, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_stl_79x76.jpg" },
{ :team_id => 27, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_tb_79x76.jpg" },
{ :team_id => 28, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_tex_79x76.jpg" },
{ :team_id => 29, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_tor_79x76.jpg" },
{ :team_id => 30, :path => "http://mlb.mlb.com//mlb/images/team_logos/logo_was_79x76.jpg" },
]

logo_hashes.each do |logo_hash|
  logo = Logo.new
  logo.team_id = logo_hash[:team_id]
  logo.path = logo_hash[:path]
  logo.save
end

puts "There are now #{Logo.count} logos in the database."



path_hashes = [
{ :team_id => 1, :path => "azdiamondbacks", :platform_id => 1 },
{ :team_id => 2, :path => "Braves", :platform_id => 1 },
{ :team_id => 3, :path => "orioles", :platform_id => 1 },
{ :team_id => 4, :path => "redsox", :platform_id => 1 },
{ :team_id => 5, :path => "whitesox", :platform_id => 1 },
{ :team_id => 6, :path => "Cubs", :platform_id => 1 },
{ :team_id => 7, :path => "Reds", :platform_id => 1 },
{ :team_id => 8, :path => "WahoosTipi", :platform_id => 1 },
{ :team_id => 9, :path => "ColoradoRockies", :platform_id => 1 },
{ :team_id => 10, :path => "motorcitykitties", :platform_id => 1 },
{ :team_id => 11, :path => "letsgofish", :platform_id => 1 },
{ :team_id => 12, :path => "Astros", :platform_id => 1 },
{ :team_id => 13, :path => "KCRoyals", :platform_id => 1 },
{ :team_id => 14, :path => "angelsbaseball", :platform_id => 1 },
{ :team_id => 15, :path => "Dodgers", :platform_id => 1 },
{ :team_id => 16, :path => "Brewers", :platform_id => 1 },
{ :team_id => 17, :path => "minnesotatwins", :platform_id => 1 },
{ :team_id => 18, :path => "NewYorkMets", :platform_id => 1 },
{ :team_id => 19, :path => "NYYankees", :platform_id => 1 },
{ :team_id => 20, :path => "OaklandAthletics", :platform_id => 1 },
{ :team_id => 21, :path => "phillies", :platform_id => 1 },
{ :team_id => 22, :path => "buccos", :platform_id => 1 },
{ :team_id => 23, :path => "Padres", :platform_id => 1 },
{ :team_id => 24, :path => "SFGiants", :platform_id => 1 },
{ :team_id => 25, :path => "Mariners", :platform_id => 1 },
{ :team_id => 26, :path => "Cardinals", :platform_id => 1 },
{ :team_id => 27, :path => "tampabayrays", :platform_id => 1 },
{ :team_id => 28, :path => "TexasRangers", :platform_id => 1 },
{ :team_id => 29, :path => "Torontobluejays", :platform_id => 1 },
{ :team_id => 30, :path => "Nationals", :platform_id => 1 },
{ :team_id => 1, :path => "Dbacks", :platform_id => 2 },
{ :team_id => 2, :path => "Braves", :platform_id => 2 },
{ :team_id => 3, :path => "Orioles", :platform_id => 2 },
{ :team_id => 4, :path => "RedSox", :platform_id => 2 },
{ :team_id => 5, :path => "whitesox", :platform_id => 2 },
{ :team_id => 6, :path => "Cubs", :platform_id => 2 },
{ :team_id => 7, :path => "Reds", :platform_id => 2 },
{ :team_id => 8, :path => "Indians", :platform_id => 2 },
{ :team_id => 9, :path => "Rockies", :platform_id => 2 },
{ :team_id => 10, :path => "tigers", :platform_id => 2 },
{ :team_id => 11, :path => "Marlins", :platform_id => 2 },
{ :team_id => 12, :path => "astros", :platform_id => 2 },
{ :team_id => 13, :path => "Royals", :platform_id => 2 },
{ :team_id => 14, :path => "Angels", :platform_id => 2 },
{ :team_id => 15, :path => "Dodgers", :platform_id => 2 },
{ :team_id => 16, :path => "Brewers", :platform_id => 2 },
{ :team_id => 17, :path => "Twins", :platform_id => 2 },
{ :team_id => 18, :path => "Mets", :platform_id => 2 },
{ :team_id => 19, :path => "Yankees", :platform_id => 2 },
{ :team_id => 20, :path => "Athletics", :platform_id => 2 },
{ :team_id => 21, :path => "Phillies", :platform_id => 2 },
{ :team_id => 22, :path => "Pirates", :platform_id => 2 },
{ :team_id => 23, :path => "Padres", :platform_id => 2 },
{ :team_id => 24, :path => "SFGiants", :platform_id => 2 },
{ :team_id => 25, :path => "Mariners", :platform_id => 2 },
{ :team_id => 26, :path => "Cardinals", :platform_id => 2 },
{ :team_id => 27, :path => "RaysBaseball", :platform_id => 2 },
{ :team_id => 28, :path => "Rangers", :platform_id => 2 },
{ :team_id => 29, :path => "BlueJays", :platform_id => 2 },
{ :team_id => 30, :path => "Nationals", :platform_id => 2 },
]

path_hashes.each do |path_hash|
  path = Path.new
  path.team_id = path_hash[:team_id]
  path.platform_id = path_hash[:platform_id]
  path.path = path_hash[:path]
  path.save
end

puts "There are now #{Path.count} paths in the database."
