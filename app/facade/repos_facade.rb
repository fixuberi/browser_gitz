
  class ReposFacade

    attr_reader :query, :page, :client

    def initialize(params, client)
      @query  = params[:q]
      @page   = params[:page]
      @client = client
    end


    def current_page
      @page = (page || 1).to_i
    end

    def first_page
      1
    end

    def last_page
      if client.last_response.rels.include?(:last)
        client.last_response.rels[:last].href.match(/page=(\d+).*$/)[1].to_i
      else
        current_page
      end
    end

    def next_page
      current_page + 1
    end

    def prev_page
      current_page - 1
    end

    def need_first_page?
      current_page != first_page
    end

    def need_last_page?
      current_page != last_page
    end

    def need_next_page?
      current_page < last_page
    end

    def need_prev_page?
      current_page > first_page
    end

    def repo_items
      @repos = client.search_repos(query, page: current_page).items
    end
  end
