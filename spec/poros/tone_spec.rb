require 'rails_helper'

RSpec.describe 'Tone' do
  it "can make a tone object" do
    data = {
    document_tone: {
        tones: [
            {
                "score": 0.6165,
                "tone_id": "sadness",
                tone_name: "Sadness"
            },
            {
                "score": 0.829888,
                "tone_id": "analytical",
                tone_name: "Analytical"
            }
        ]
    },
    "sentences_tone": [
        {
            "sentence_id": 0,
            "text": "Team, I know that times are tough!",
            "tones": [
                {
                    "score": 0.801827,
                    "tone_id": "analytical",
                    "tone_name": "Analytical"
                }
            ]
        },
        {
            "sentence_id": 1,
            "text": "Product sales have been disappointing for the past three quarters.",
            "tones": [
                {
                    "score": 0.771241,
                    "tone_id": "sadness",
                    "tone_name": "Sadness"
                },
                {
                    "score": 0.687768,
                    "tone_id": "analytical",
                    "tone_name": "Analytical"
                }
            ]
        },
        {
            "sentence_id": 2,
            "text": "We have a competitive product, but we need to do a better job of selling it!",
            "tones": [
                {
                    "score": 0.506763,
                    "tone_id": "analytical",
                    "tone_name": "Analytical"
                }
            ]
        }
    ]
  }
  tone = Tone.new(data)

  expect(tone.tone).to eq([data[:document_tone][:tones][0][:tone_name], data[:document_tone][:tones][1][:tone_name]])
  end
end