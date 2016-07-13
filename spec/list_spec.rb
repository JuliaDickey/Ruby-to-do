require('spec_helper')

describe(List) do
  describe(".all") do
    it("starts off with no lists") do
      expect(List.all()).to(eq([]))
    end
  end

  describe('#name') do
    it('tells you its name') do
      list = List.new({:name => "scrub the zebra", :id => nil})
      expect(list.name()).to (eq("scrub the zebra"))
    end
  end

describe("#id") do
  it("sets its ID when you save it") do
    list = List.new({:name => "Epicodus stuff", :id => nil})
    list.save()
    expect(list.id()).to(be_an_instance_of(Fixnum))
  end
end

describe("#save") do
  it("lets you save lists at the database") do
    list = List.new({:name => "Epicodus stuff", :id => nil})
    list.save()
    expect(List.all()).to(eq([list]))
  end
end

describe("#==") do
    it("is the same list if it has the same name") do
      list1 = List.new({:name => "Epicodus stuff", :id => nil})
      list2 = List.new({:name => "Epicodus stuff", :id => nil})
      expect(list1).to(eq(list2))
    end
  end

  describe("#update") do
    it("lets you update lists in the database") do
      list = List.new({:name => "Epicodus stuff", :id => nil})
      list.save()
      list.update({:name => "Homework stuff"})
      expect(list.name()).to(eq("Homework stuff"))
    end
  end

end
