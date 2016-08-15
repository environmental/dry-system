Test::Container.namespace(:test) do |container|
  container.finalize(:bar) do
    init do
      module Test
        module Bar
          # I shall be booted
        end
      end
    end

    start do
      container.register(:bar, 'I was finalized')
    end
  end
end
