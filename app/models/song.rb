class Song < ApplicationRecord

    validates :title, presence: true
    validates :title, uniqueness: { scope: :released, }
    validates :released, inclusion: { in: [true, false] }
    validates :artist_name, presence: true
    validates :release_year, presence: true, if: :released?, numericality:  {less_than_or_equal_to: Date.current.year}
    

end
