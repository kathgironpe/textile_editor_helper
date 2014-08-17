When /^I run "([^\"]*)"$/ do |command|
  expect(system("cd #{@current_directory} && #{command}")).to be
end

When /^I add "([^\"]*)" to file "([^\"]*)"$/ do |content, short_path|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  File.open(path, 'a') { |f| f.write(content + "\n") }
end

Then /^the file "([^"]*)" should contain:$/ do |file, content|
  check_file_content(file, content, true)
end

When /^I replace "([^\"]*)" with "([^\"]*)" in file "([^\"]*)"$/ do |old_content, new_content, short_path|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  content = File.read(path).gsub(old_content, new_content)
  File.open(path, 'w') { |f| f.write(content) }
end

When /^I insert "([^\"]*)" into "([^\"]*)" after line (\d+)$/ do |content, short_path, after_line|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  lines = File.read(path).split("\n")
  lines[after_line.to_i, 0] = content
  File.open(path, 'w') { |f| f.write(lines.join("\n")) }
end

Then /^I should see file "([^\"]*)"$/ do |path|
  expect(File.exist?(File.join(@current_directory, path))).to be
end

Then /^I should see "(.*)" in file "([^\"]*)"$/ do |content, short_path|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  expect(File.readlines(path).join).to include(content)
end

Then /^I should not see "(.*)" in file "([^\"]*)"$/ do |content, short_path|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  expect(File.readlines(path).join).to_not include(content)
end

Then /^I should see the following files$/ do |table|
  table.raw.flatten.each do |path|
    expect(File.exist?(File.join(@current_directory, path))).to be
  end
end

Then /^I should see the following in file "([^\"]*)"$/ do |short_path, table|
  path = File.join(@current_directory, short_path)
  expect(File.exist?(path)).to be
  table.raw.flatten.each do |content|
    expect(File.readlines(path).join).to include(content)
  end
end

Then /^I should successfully run "([^\"]*)"$/ do |command|
  expect(system("cd #{@current_directory} && #{command}")).to be
end

Then /^I should see "([^\"]*)" when running "([^\"]*)"$/ do |expected_response, command|
  expect(`cd #{@current_directory} && #{command}`).to include(expected_response)
end
