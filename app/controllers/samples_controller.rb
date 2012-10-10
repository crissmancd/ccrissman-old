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

    sample = samples.select{ |s| s[:slug] == params[:slug] }.first
    sample_index = samples.index(sample)

    @prev_link = sample_index.zero?                   ? nil : samples[sample_index - 1][:slug]
    @next_link = sample_index == (samples.length - 1) ? nil : samples[sample_index + 1][:slug]

    @alt = "#{sample[:slug].gsub(/_|-/, " ")} screenshot"
    @image = "http://ccrissman.s3.amazonaws.com/images/h/#{sample[:slug]}.#{sample[:extension]}"
  end

end


