# frozen_string_literal: true

RSpec.shared_examples "devices detector_devices" do |chunk|
  context "white list № #{chunk}" do
    subject { described_class.new(user_agent).is_crawler? }

    let(:devices_uas) { GOOD_UA_CHUNKS[chunk] }

    GOOD_UA_CHUNKS[chunk].each do |ua|
      describe "#{ua}" do
        let(:user_agent) { ua }

        it { is_expected.to be(false) }
      end
    end
  end
end
