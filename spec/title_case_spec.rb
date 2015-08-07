require ("rspec")
require ("title_case")

describe ("String#title_case") do
	it("capitalizes the first letter of the word hello") do
      expect(("hello").title_case()).to(eq("Hello"))
	end
end