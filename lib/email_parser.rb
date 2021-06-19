# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

attr_accessor :emails

def initialize(emails)
    @emails = emails
end

def parse
    fixed_emails = []
    email_list = []

    email_list = @emails.split

    email_list.each do |address|
        if address.include?(",")
            fixed_emails << address.delete_suffix!(",")
        else fixed_emails << address
        end
    end
    return fixed_emails.uniq

end


end
