require 'spec_helper'
require 'sidekiq/testing'

Sidekiq::Testing.fake!

describe ReadRaptor::RegisterArticleWorker do
  describe '#perform' do
    it 'makes a request' do
      ReadRaptor::RegisterArticleWorker.perform_async({ alpha: 'centuari' })
      expect(ReadRaptor::RegisterArticleWorker.jobs.size).to eq 1
    end
  end
end
