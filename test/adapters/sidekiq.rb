require "sidekiq/testing"

ActiveJob::Base.queue_adapter = ActiveJob::QueueAdapters::SidekiqAdapter
Sidekiq::Testing.inline!
