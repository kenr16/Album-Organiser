class Cd
  @@cds = []

  define_method(:initialize) do |title, artist|
    @title = title
    @artist = artist
  end

  define_method(:title) do
    @title
  end

  define_method(:artist) do
    @artist
  end

  define_singleton_method(:all) do
    @@cds
  end

  define_method(:save) do
    @@cds.push(self)
  end

  define_singleton_method(:clear) do
    @@cds = []
  end
end
