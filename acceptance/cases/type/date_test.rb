# frozen_string_literal: true


require "test_helper"

module ActiveRecord
  module Type
    class DateTest < SpannerAdapter::TestCase
      include SpannerAdapter::Types::TestHelper

      def test_set_date
        expected_date = ::Date.new 2020, 1, 31
        record = TestTypeModel.new start_date: expected_date

        assert_equal expected_date, record.start_date

        record.save!
        record.reload
        assert_equal expected_date, record.start_date
      end
    end
  end
end