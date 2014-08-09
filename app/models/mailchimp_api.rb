class MailchimpApi
  class << self
    # returns the mailchimp list corresponding to the level
    def get_list(level=0)
      list = MAILCHIMP_LISTS.find do |list|
        list[:level] >= level
      end
      list = MAILCHIMP_LISTS.last if list.nil?
      return list
    end
  
    # subscribes user to the list with specified level
    def subscribe_user!(user, level=0)
      list = get_list(level)
      mc = Mailchimp::API.new(MAILCHIMP_API_KEY)
      member = mc.lists.members(list[:id])["data"].find do |m|
        m["email"] == user.email
      end
      mc.lists.subscribe list[:id], email: user.email unless member
    end
  end
end
