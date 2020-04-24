class Task < ApplicationRecord
  belongs_to :animal
  validates :title, presence: true
  validates :date, presence: true,
  format: {with: /\A\d{4}-\d{2}-\d{2}\z/}
  validate :date_validate
  validates :interval, presence: true,
  numericality: { only_integer: true, greater_than: 0, less_than: 365},
  format: {with: /\A[0-9]+\z/}

  def date_validate
    errors.add(:date, '今日以降の日付を入力してください') if date.nil? || date < Date.today
  end
end
