# Q0: Why is this error being thrown?
There is no pokemon model yet for the controller to reference

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The .sample method used in the index method of the home controller randomly selects items from an array. They are all capitalized

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The button calls the patch with 'capture' method. The @pokemon id is passed in, and the capture_path calls the capture action in pokemons_controller. It then redirects back to the homepage.

# Question 3: What would you name your own Pokemon?
BigBoy

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed a "/" because i want it to go back to the home page which is the root that we are trying to get back to after we capture a pokemon.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
