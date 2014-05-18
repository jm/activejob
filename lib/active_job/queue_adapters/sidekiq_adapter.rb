require 'sidekiq'

module ActiveJob
  module Queueadapters
    class SidekiqAdapter
      class << self
        def queue(job, *args)
          Sidekiq::Client.enqueue('bob', *args)
        end
      end
    end
  end
end
