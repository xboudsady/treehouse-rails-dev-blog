class Comment < ApplicationRecord
    belongs_to :post                    # Define association to the "post" model. When you set up a model with a "has_many" association on the first mode, you need to set a "belongs_to" to its associated models
end
