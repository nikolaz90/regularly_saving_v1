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


  def organised_year_and_total
    
    months_obj = {january: self.january, febuary: self.febuary, march: self.march, april: self.april, may: self.may, june: self.june, july: self.july, august: self.august, september: self.september, october: self.october, november: self.november, december: self.december}
    tot = months_obj.values.sum
    is_on_target = tot >= (self.monthly_target)*12
    congrats_messages = is_on_target ? "Well done!" : "better luck next time"


    ans = {months_object: months_obj, total: tot, is_on_target: is_on_target, congrats: congrats_messages}
  end
end
