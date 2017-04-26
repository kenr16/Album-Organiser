require('rspec')
require('cd')

describe('Cd') do
  before() do
    Cd.clear()
  end

  describe("#title") do
    it('returns the title of the album') do
      test_album = Cd.new("Ocean Blue", "Madonna")
      expect(test_album.title()).to(eq("Ocean Blue"))
    end
  end

  describe("#artist") do
    it('returns the artist of the album') do
      test_album = Cd.new("Liquer my only Friend", "Garth Brooks")
      expect(test_album.artist()).to(eq("Garth Brooks"))
    end
  end

  describe("#save") do
    it("adds an album to the array of saved albums") do
      test_album = Cd.new("Bob's Used Cars", "J-Lo")
      test_album.save()
      expect(Cd.all()).to(eq([test_album]))
    end
  end

  describe(".all") do
    it("empty at first") do
      expect(Cd.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("emties all saved albums") do
      Cd.new("stuff", "person").save()
      Cd.clear()
      expect(Cd.all()).to(eq([]))
    end
  end

end
