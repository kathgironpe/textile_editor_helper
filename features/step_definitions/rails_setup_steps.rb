Given /^a new Rails app$/ do
  FileUtils.mkdir_p("tmp")
  system("rm -rf tmp/rails_app")
  system("rails new tmp/rails_app")
  system("ln -s ../../../lib/generators tmp/rails_app/lib")
  system("rm -rf tmp/rails_app/vendor")
  system("ln -s ../../vendor tmp/rails_app")
  @current_directory = File.expand_path("tmp/rails_app")
end
