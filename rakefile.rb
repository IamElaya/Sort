# task :default do
#   puts "Hello World!"
# end

# desc 'Ring the bell'
# task :ring do
#   puts "Bell is ringing."
# end
 
# desc 'Enter home'
# task :enter => :ring do
#   puts "Entering home!"
# end

# file 'products.sql' => 'products.xml' do
#   # build SQL INSERT clause and save it in products.sql file,
#   # basing on products.xml datafile
# end

# task :manipulate_files do
#   mkdir 'new_dir'
#   mv 'new_dir', 'lukasz'
#   chmod 0777, 'lukasz'
#   touch 'lukasz/wrobel.txt'
#   rm_rf 'lukasz'
# end

# task :check do
#   # ...
 
#   unless uptodate?(output_file, ['input_file.xml'])
#     # regenerate output_file
#   end
# end

one_file_to_rule_them_all = 'database.sql'
 
FileList['*.sql'].each {|table| file one_file_to_rule_them_all => table}

file one_file_to_rule_them_all do
  puts 'I require the SQL files'
end