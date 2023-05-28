require 'erb'

# Step 1: Read the contents of the index.erb file
html_content = File.read('views/index.erb')

# Step 2: Encode the HTML content using ERB
encoded_html = ERB.new(html_content).result(binding)

# Step 3: Save the encoded HTML content to a temporary file
File.write('encoded.html', encoded_html)

# Step 4: Use curl to send a GET request to http://localhost:8080 and retrieve the rendered HTML
system('curl -X GET http://localhost:8080 > output.html')
