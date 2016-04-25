module ApplicationHelper
  def test_me
    return (0..100).to_a.join('|')
  end
end
