# Quiz

This code was produced in one 30 minute interval as part of a workshop review at Maker's academy.

## The Challenge

The challenge was to create a test-driven program that would work in the terminal, that the user could launch with a simple command like `ruby filename.rb`, and upon launching, the user would be presented with a question. The program would then wait for user input, before displaying the correct answer. If there were no more questions, the app would exit on its own accord.

You can [see the screen recording of me working on the challenge here.](https://youtu.be/aZ_0UgrwQD0)

## Approach

The most challenging aspect of this challenge was testing, as I hadn't stubbed `gets` before, and wasn't familiar with the following syntax.

```ruby
expect { Quiz.prompt }.to output(
  a_string_including("string")
).to_stdout

```

Towards the end of the 30 minutes, I was able to get the program working as expected, however, my tests were waiting for an input (i.e. I wasn't able to stub it), which meant that technically I didn't have dependable tests.

The solution for this was to add the following line to my `quiz.rb` file:

`Quiz.run if __FILE__ == $PROGRAM_NAME`

which makes sure that the file is not executed when the RSpec tests run.
