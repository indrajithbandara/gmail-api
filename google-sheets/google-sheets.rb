require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require "google_drive"


session = GoogleDrive::Session.from_config("config.json")

worksheet = session.spreadsheet_by_key("1uGaDLBLGFZxqx72bUalxkfnTR7B0AD2SWTWAaDPkLKg").worksheets[0]

#p worksheet

# Gets content of A2 cell.
# p ws[2, 1]  #==> "hoge"

# Changes content of cells.
# Changes are not sent to the server until you call ws.save().
# worksheet[2, 1] = "foo"
# worksheet[2, 2] = "bar"
# worksheet.save

# Dumps all cells.
# (1..worksheet.num_rows).each do |row|
#   (1..worksheet.num_cols).each do |col|
#     p worksheet[row, col]
#   end
# end

# # Dumps all cells.
# (1..ws.num_rows).each do |row|
#   (1..ws.num_cols).each do |col|
#     p ws[row, col]
#   end
# end

# Yet another  way to do so.
#p worksheet.rows  #==> [["fuga", ""], ["foo", "bar]]

# # Reloads the worksheet to get changes by other clients.
# ws.reload