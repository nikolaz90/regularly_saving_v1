class Year < ApplicationRecord
  validates :year, presence: true
  belongs_to :user
  attribute :year, :integer, default: 2022
  attribute :monthly_target, :integer, default:25
  attribute :january, :integer, default: 0
  attribute :febuary, :integer, default: 0
  attribute :march, :integer, default: 0
  attribute :april, :integer, default: 0
  attribute :may, :integer, default: 0
  attribute :june, :integer, default: 0
  attribute :july, :integer, default: 0
  attribute :august, :integer, default: 0
  attribute :september, :integer, default: 0
  attribute :october, :integer, default: 0
  attribute :november, :integer, default: 0
  attribute :december, :integer, default: 0
end
