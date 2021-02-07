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
