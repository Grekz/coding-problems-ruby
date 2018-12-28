# @author grekz
class E929_UniqueEmailAddresses
    # @param {String[]} emails
    # @return {Integer}
    def num_unique_emails(emails)
        s = []
        emails.each{ |e|
            parts = e.split(/[@+]/)
            s << parts[0].delete(".") + parts.last
        }
        s.uniq.size
    end
end