# frozen-string-literal: true

class Comment < ApplicationRecord
  include Visible
  belongs_to :article
end
