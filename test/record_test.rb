require 'test_helper'

describe Airtable do
  describe Airtable::Record do
    it "should not return id in fields_for_update" do
      record = Airtable::Record.new(:name => "Sarah Jaine", :email => "sarah@jaine.com", :id => 12345)
      record.fields_for_update.wont_include(:id)
    end
  end # describe Record
end # Airtable