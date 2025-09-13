class HomeService
  def initialize
    # Initialize without external client for now
  end

  def call
    get_home_data
  end

  private 

  def get_home_data
    puts "Home data: test"
    # Return some sample data
    { message: "Home service is working!", timestamp: Time.current }
  end
end