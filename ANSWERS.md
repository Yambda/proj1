# Q0: Why are these two errors being thrown?

Pending migration error is happening because we did not update the schemea for the files yet.
The unitialized constant HomeController happened because when it is being directed to non-exist controller

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are the same starter pokemon as in Pokemon Go. Also, they are based on the conditions set in the Schemea

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It is sending a patch request to the path capture. As well, the button is setting the id of the Pokemon inside the Params. 

# Question 3: What would you name your own Pokemon?

Yamster

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

The Pokemon_player Id. It is ok to not have a path because this is a built-in feature of rails

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

IDK. I got stuck because my form was passing nils for the name and ndex of my new Pokemon.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
