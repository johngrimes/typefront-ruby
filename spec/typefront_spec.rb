require 'spec_helper'

describe TypeFront do
  before(:all) do
    @typefront = TypeFront.new('username', 'password')
  end

  before do
    JSON.expects(:parse).once
  end

  describe 'fonts' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:get)
      @typefront.fonts
    end
  end

  describe 'font_details' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:get)
      @typefront.font_details(101)
    end
  end

  describe 'upload_font' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:post)
      file = mock()
      @typefront.upload_font(file)
    end
  end

  describe 'remove_font' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:delete)
      @typefront.remove_font(101)
    end
  end

  describe 'add_domain' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:post)
      @typefront.add_domain(101, 201)
    end
  end

  describe 'remove_domain' do
    it 'should run successfully' do
      RestClient::Resource.any_instance.expects(:delete)
      @typefront.remove_domain(101, 201)
    end
  end
end
