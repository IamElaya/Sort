require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.


class ContactList

  def menu
     puts "Here is a list of available commands:
          new    - Create a new contact
          list   - List all contacts      
          show   - Show a contact  
          search - Search contacts"
        end

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`. 
end

contactlist = ContactList.new
contactlist.menu


command = gets.chomp

case command
when "new"
  create
when "list"
  all
when "show"
  find
when "search"
  search
else
  exit
end
