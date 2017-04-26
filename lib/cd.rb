class Cd
  @@cds = []

  define_method(:initialize) do |title, artist|
    @title = title
    @artist = artist
    @id = @@cds.length().+(1)
  end

  define_method(:title) do
    @title
  end

  define_method(:artist) do
    @artist
  end

  define_method(:id) do
    @id
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

  define_singleton_method(:find) do |id|
    found_album = nil
    @@cds.each() do |cd|
      if cd.id().eql?(id.to_i())
        found_album = cd
      end
    end
    found_album
  end

end
