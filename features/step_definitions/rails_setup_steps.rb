Given /^a new Rails app$/ do
  FileUtils.mkdir_p("tmp")
  system("rm -rf tmp/rails_app").should be_true
  system("rails new tmp/rails_app").should be_true
  system("ln -s ../../../lib/generators tmp/rails_app/lib/generators").should be_true
  system("rm -rf tmp/rails_app/vendor").should be_true
  system("ln -s ../../vendor tmp/rails_app").should be_true
  @current_directory = File.expand_path("tmp/rails_app")
end
