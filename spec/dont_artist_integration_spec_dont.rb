require('rspec')
require('artists')
require('cd')

describe(Artist) do
  before() do
    Artist.clear()
  end

  describe('#name') do
    it("returns the name of the dealership") do
      new_artist = Artist.new("Bob")
      expect(new_artist.name()).to(eq("Bob"))
    end
  end

  describe('#id') do
    it("returns the id of the dealership") do
      new_artist = Artist.new("Bob")
      expect(new_artist.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it("initially returns an empty array of cars for the dealership") do
      new_artist = Artist.new("Bob")
      expect(new_artist.cars()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a dealership to the array of saved dealerships") do
      new_artist = Artist.new("Bob")
      new_artist.save()
      expect(Artist.all()).to(eq([new_artist]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved dealerships") do
      Artist.new("Bob").save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a dealership by its id number") do
      new_artist = Artist.new("Bob")
      new_artist.save()
      new_artist2 = Artist.new("Jane")
      new_artist2.save()
      expect(Artist.find(new_artist.id())).to(eq(new_artist))
    end
  end

  describe() do
    it("adds a new vehicle to a dealership") do
      new_artist = Artist.new("Bob")
      test_vehicle = Cd.new("Feelings")
      new_artist.add_vehicle(test_vehicle)
      expect(new_artist.cars()).to(eq([test_vehicle]))
    end
  end
end
