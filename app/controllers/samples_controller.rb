class SamplesController < ApplicationController

  def show
    samples = [
      { slug: "buzz-feed",        extension: :png },
      { slug: "buzz-srp",         extension: :jpg },
      { slug: "dueprops-profile", extension: :jpg },
      { slug: "dueprops-signin",  extension: :jpg },
      { slug: "rollcallme",       extension: :jpg },
      { slug: "yp-hp",            extension: :jpg },
      { slug: "yp-litehp",        extension: :png },
      { slug: "yp-ypcrowd",       extension: :jpg }
    ]

    @sample = samples.select{ |s| s[:slug] == params[:slug] }.first
    sample_index = samples.index(@sample)

    if sample_index.zero?
      @prev_link = nil
      @next_link = samples[sample_index + 1][:slug]
    elsif sample_index == (samples.length - 1)
      @prev_link = samples[sample_index - 1][:slug]
      @next_link = nil
    else
      @prev_link = samples[sample_index - 1][:slug]
      @next_link = samples[sample_index + 1][:slug]
    end
  end

end
