require "hashable_lecter/engine"

module HashableLecter

  def self.setup
    yield self
  end
end
