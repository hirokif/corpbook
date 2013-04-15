# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/corps.csv') do |row|
  Corp.create(
#   :id => row[0],
    :corp_no => row[1],
    :corp_name => row[2],
    :corp_add => row[3],
    :corp_tel => row[4],
    :corp_fax => row[5],
#   :created_at => row[6],
#   :updated_at => row[7],
    :corp_mail => row[8]
  )
end
