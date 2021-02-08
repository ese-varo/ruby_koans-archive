### Annotations
---
### Review topics
#### Regular expressions
- ```
  def test_parentheses_also_capture_matched_content_by_number
    assert_equal 'Gray, James', "Gray, James"[/(\w+), (\w+)/, 1]
    assert_equal nil, "Gray, James"[/(\w+), (\w+)/, 2]
  end
```
- ```
  def test_variables_can_also_be_used_to_access_captures
    assert_equal 'Gray, James', "Name:  Gray, James"[/(\w+), (\w+)/]
    assert_equal 'Gray', $1
    assert_equal 'James', $2
  end
```
- ```
  def test_a_vertical_pipe_means_or
    grays = /(James|Dana|Summer) Gray/
    assert_equal 'James Gray', "James Gray"[grays]
    assert_equal 'Summer', "Summer Gray"[grays, 1]
    assert_equal nil, "Jim Gray"[grays, 1]
  end
```
#### methods
- eval method
#### constants
- explicit scoping
#### open classes
- why does it uses `::`? (scope operator)
```
  class ::Integer
    def even?
      (self % 2) == 0
    end
  end
```

#### passing messages
- underscores: 
```
  def test_send_with_underscores_will_also_send_messages
    mc = MessageCatcher.new

    assert_equal true, mc.__send__(:caught?)

    # THINK ABOUT IT:
    #
    # Why does Ruby provide both send and __send__ ?
  end

```
Both obj.msg and obj.send(:msg) sends the message named :msg to
the object. We use "send" when the name of the message can vary
dynamically (e.g. calculated at run time), but by far the most
common way of sending a message is just to say: obj.msg.

