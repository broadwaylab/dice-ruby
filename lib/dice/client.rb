require 'httparty'
require_relative 'result'

module Dice
  class Client
    include HTTParty
    base_uri 'http://service.dice.com/api/rest/jobsearch/v1/simple.json'
    #attr_reader :uri, :options

    attr_accessor :text, :area_coode, :country, :state, :skill, :city, :text, :page

    def initialize(options = {})
      self.text = options[:text] || '' 
      self.area_coode = options[:area_coode] || ''
      self.country = options[:country] || ''
      self.state = options[:state] || ''
      self.skill = options[:skill] || ''
      self.city = options[:city] || ''
      self.text = options[:text] || ''
      self.page = options[:page] || ''
    end

    def search
      search = self.class.get(encoded_uri)
      results = []
      search['resultItemList'].each do |data| 
        results <<  Dice::Result.new(data: data)
      end
      results
    end

    def encoded_uri
      URI.encode("?text=#{self.text}&areacode=#{self.area_coode}&country=#{self.country}&state=#{self.state}&skill=#{self.skill}&city=#{self.city}&page=#{self.page}")
    end
  end
end