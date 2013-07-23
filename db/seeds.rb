# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# 'rake db:seed' でcsvファイルをインポート

require "csv"

CSV.foreach('db/corps.csv') do |row|
  Corp.create(
    :corp_no => row[0],
    :corp_name => row[1],
    :corp_add => row[2],
    :corp_tel => row[3],
    :corp_fax => row[4],
    :corp_mail => row[7]
  )
end

CSV.foreach('db/tois.csv') do |row|
  Toi.create(
    :toi_no => row[0],
    :toi_name => row[1],
		:grp_no => row[2]
  )
end

CSV.foreach('db/grps.csv') do |row|
  Grp.create(
    :grp_no => row[0],
    :grp_name => row[1]
    )
end