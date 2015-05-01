class Definition

    @@all_definitions = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
   @@all_definitions.push(self)
  end

  define_singleton_method(:clear) do
  @@all_definitions = []
  end
 end
