class IpName < ActiveRecord::Base

  def self.check(agent, timeout = 1)
    3.times.each do |i|
      puts i
      begin
        agent.get "http://www.543345.com"
        return true
      rescue Net::OpenTimeout
        timeout += 1
      end
    end
    return false
  end

  def self.record
    agent = Mechanize.new
    # agent.user_agent_alias = 'Mac Safari'
    agent.user_agent = "Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)"
    agent.set_proxy("183.221.217.58", 8123)
    agent.open_timeout=0.5
    if check(agent)
      puts "记录"
    else
      puts "不记录"
    end
  end
end


#google  "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
#baidu   "Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)"
#bing    "Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"
