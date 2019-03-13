# Quiz

This code was produced in one 30 minute interval as part of a workshop review at Maker's academy.

You can [see the screen recording of me working here.](https://youtu.be/aZ_0UgrwQD0)

## Approach

The most challenging aspect of this challenge was testing, as I hadn't stubbed `gets` before, and wasn't familiar with the following syntax.

```ruby
expect { Quiz.prompt }.to output(
  a_string_including("string")
).to_stdout

```

Towards the end of the 30 minutes, I was able to get the program working as expected, however, my tests were waiting for an input (i.e. I wasn't able to stub it). The solution for this was to add the following line to my `quiz.rb` file:

`Quiz.run if __FILE__ == $PROGRAM_NAME`

which makes sure that the file is not executed when the RSpec tests run.
