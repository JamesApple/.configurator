require 'fileutils'
class ConfigFile
  def initialize(path)
    @path = path
  end

  # We only want to stitch files if they do not contain other directories
  def setup
    query = `cd #{@path} && ls -AF`
      .split("\n")
    return nil if query
      .any? { |s| s.include? '/' }
    self
  end

  def write_to directory
    write_path = @path
      .gsub ConfigComposer::INPUT_ROOT, directory
    make_folders write_path
    contents = stitch_components
    # TODO Make this a backup instead of killing everything in sight
    FileUtils.rm write_path if File.exist? write_path
    file = File.new write_path, 'w+'
    file << contents
  end

  def make_folders write_path
    FileUtils::mkdir_p File.dirname(write_path)
  end

  def stitch_components
    contents = ''
    puts component_paths
    component_paths.each do |cp|
    	puts cp
      component = File.read cp
      contents << component
    end
    contents
  end

  def component_paths
    `cd #{@path} && ls -AF`
      .split("\n")
      .map { |file| File.join @path, file }
  end

end
