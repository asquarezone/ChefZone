# lets create an array of courses
puts ("printing courses")
courses = ["AWS", "AZURE", "DevOps"]
puts(courses)


puts("printing topics of #{courses[2]}")
devops_topics = %w(ansible chef git jenkins azuredevops sonarqube terraform docker kubernetes)
#puts(devops_topics)

# simple for loop
devops_topics.each do |topic|
    puts("Topic ==>  #{topic}")
end

# hash
topic_hash = {
    'AWS' => ["S3", "EC2", "VPC"],
    'Azure' => {
        "Storage" => "Azure Storage Accounts",
        "Network" => "Azure VNET",
        "Compute" => "Azure VM"
    }
}
puts("topics of aws are #{topic_hash['AWS']}")
topic_hash['AWS'].each do |aws_topic|
    puts("Topic is #{aws_topic}")
end

puts(topic_hash['Azure']['Storage'])
topic_hash['Azure'].each do |topic_name, topic_value|
    puts("#{topic_name} ==> #{topic_value} ")
end

name = "Azure1"

if name == 'Azure'
    puts("This is azure")  
end

if name == "Azure"
    puts("Azure")
    
elsif name == "AWS"
    puts("AWS")
else
    puts("DevOps")
    
end

case name
when 'Azure'
    puts("Azure") 
when 'AWS'
    puts("AWS")
    
else
    puts("DevOps")
    
end


