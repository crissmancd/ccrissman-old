class SamplesController < ApplicationController

  def show
    samples = [
      ["buzz-feed",        :png],
      ["buzz-srp",         :jpg],
      ["dueprops-profile", :jpg],
      ["dueprops-signin",  :jpg],
      ["rollcallme",       :jpg],
      ["yp-hp",            :jpg],
      ["yp-litehp",        :png],
      ["yp-ypcrowd",       :jpg]
    ]
    
    @sample = samples.select{ |s| s.first == params[:slug] }.flatten
    sample_index = samples.index(@sample)

    if sample_index.zero?
      @prev_link = nil
      @next_link = samples[sample_index + 1].first
    elsif sample_index == (samples.length - 1)
      @prev_link = samples[sample_index - 1].first
      @next_link = nil
    else
      @prev_link = samples[sample_index - 1].first
      @next_link = samples[sample_index + 1].first
    end
  end

end
