10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla diam tellus, feugiat ac accumsan ut, dapibus ut eros. Aenean quis turpis nibh. Aliquam eu enim ligula. Curabitur faucibus bibendum tellus, vel finibus sem luctus non. Praesent eu sem vel sapien porttitor pulvinar. Curabitur fermentum felis urna, non dignissim ante imperdiet a. Donec aliquam euismod erat non laoreet. Curabitur lorem ligula, porta eu tortor quis, ultricies iaculis turpis. Suspendisse placerat finibus dapibus. Aliquam semper lectus vel vestibulum viverra. Vivamus scelerisque purus aliquam lorem feugiat posuere. Pellentesque elementum arcu lobortis, fringilla ex non, facilisis massa. Phasellus vitae mattis nibh, et lacinia justo. Mauris dolor quam, euismod id vestibulum molestie, malesuada quis ex."
	)
end
puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end
puts "5 skills created"

9.times do |item|
	Portfolio.create!(
		title: "Portfolio title #{item}",
		subtitle: "My great service",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla diam tellus, feugiat ac accumsan ut, dapibus ut eros. Aenean quis turpis nibh. Aliquam eu enim ligula. Curabitur faucibus bibendum tellus, vel finibus sem luctus non. Praesent eu sem vel sapien porttitor pulvinar. Curabitur fermentum felis urna, non dignissim ante imperdiet a. Donec aliquam euismod erat non laoreet.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end
puts "9 portfolio items created"