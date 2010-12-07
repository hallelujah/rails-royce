class Array
  def to_sphinx_query
    "(" + map(&:to_sphinx_query).join("|") + ")"
  end
end