package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do 
	content "<html><head>Hello</head><body>Hello World</body></html>"
end

service 'httpd' do
	action  [:enable, :start]
end

