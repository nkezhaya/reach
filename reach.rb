require 'rubygems'
require 'net/http'
require 'net/https'
require 'hpricot'

module Reach
  VALID_EMAIL = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  
  def Reach.get_gmail_contacts(email, password)
    return false if not email =~ VALID_EMAIL
    
    url     = 'www.google.com'
    path    = '/accounts/ClientLogin'
    
    data    = "accountType=HOSTED_OR_GOOGLE&Email=#{email}&Passwd=#{password}" +
              "&service=cp&source=WhitePaperClip-Reach-1"
    headers = {
      'Content-Type' => 'application/x-www-form-urlencoded'
    }
    
    http = Net::HTTP.new(url, 443)
    http.use_ssl = true
    resp = http.post(path, data, headers)
    
    auth_token = resp.body.gsub(/.*\n.*\nAuth=(.*)/, '\1')
    headers = { 'Authorization' => "GoogleLogin auth=#{auth_token}" }

    path = "http://www.google.com/m8/feeds/contacts/#{email}/full?max-results=99999"
    
    http = Net::HTTP.new(url, 80)
    res = http.get(path, headers, nil)
    
    results = []
    counter = 0
    doc = Hpricot::XML(res.body)
    doc.search("entry").each do |entry|
      results[counter] = [ entry.search("title").inner_html ]

      entry.search("gd:email[@address]").each do |email|
        results[counter] << email.attributes['address']
      end

      counter += 1
    end
    
    return results
  end
  
  def Reach.get_hotmail_contacts(email, password)
    return false if not email =~ VALID_EMAIL
    
    
  end
  
  def Reach.get_yahoo_contacts(email, password)
    return false if not email =~ VALID_EMAIL
    
  end
  
  def Reach.get_aol_contacts(email, password)
    return false if not email =~ VALID_EMAIL
    
  end
end
