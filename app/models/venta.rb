class Venta < ApplicationRecord
  belongs_to :article

  def self.sales_by_product
    grouped_articles = all.group_by(&:article_id)
    total_sales = grouped_articles.each_key{ |article_id| grouped_articles[article_id] = grouped_articles[article_id].map{|sale| sale.sale_price}.sum }
    total_sales.transform_keys{ |key| Article.find_by(id: key).strain }
  end
end
