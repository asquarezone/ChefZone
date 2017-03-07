class Chef::Recipe::Homepage

  def self.exists?
    return  ::File.exist?('/var/www/html/index.html')
  end
end
