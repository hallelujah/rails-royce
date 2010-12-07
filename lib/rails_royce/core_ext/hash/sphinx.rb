class Hash
  def to_sphinx_query
    clone.tap do |h|
      h.each{|k,v| h[k] = v.to_sphinx_query}
    end
  end
end