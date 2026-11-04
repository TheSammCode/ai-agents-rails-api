class KnowledgeController < ApplicationController
  def search
    query = params[:query]
    if query.blank?
      render json: { error: "Query parameter is required" }, status: :bad_request
      return
    end

    # Simple search on topic and content
    results = Knowledge.where("topic LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")
    
    render json: {
      query: query,
      results: results.as_json(only: [:topic, :content])
    }
  end
end
