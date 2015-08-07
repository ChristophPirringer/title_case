require ("rspec")
require ("title_case")
require ("pry")

describe ("String#title_case") do
	it("capitalizes the first letter of the word hello") do
      expect(("hello").title_case()).to(eq("Hello"))
	end

	it("capitalizes the first letter of the words 'hello girl'") do
      expect(("hello girl").title_case()).to(eq("Hello Girl"))
	end

	it("capitalizes all words except filler-words like 'and, the, of, or'") do
      expect(("hello girl and dog").title_case()).to(eq("Hello Girl and Dog"))
	end

	it("capitalizes all words except filler-words like 'and, the, of, or', except at the beginning of a sentence.") do
      expect(("and hello dog of girl").title_case()).to(eq("And Hello Dog of Girl"))
	end
end