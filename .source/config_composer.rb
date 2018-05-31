require 'fileutils'
require_relative 'config_file'

class ConfigComposer
  PROJECT_ROOT = FileUtils.pwd
  INPUT_ROOT = File.join PROJECT_ROOT, 'input'
  OUTPUT_ROOT = File.join PROJECT_ROOT, 'output'
  USER_ROOT = `cd ~ && pwd`.chomp

  def initialize
    run
  end

  def run
    config_files = create_config_files INPUT_ROOT
    config_files.each { |cf| cf.write_to USER_ROOT }
  end

  private

  # Each directory within the /input directory is considered a 'file'
  # If any of these files contain a directory, they will not be stitched.
  def create_config_files path
    directories = directories_in path
    directories
      .map { |d| ConfigFile.new d }
      .map { |cf| cf.setup }
      .compact
  end

  def directories_in path
    directories = `cd #{path} && ls -AF`
      .split("\n")
      .keep_if { |listing| listing.include? '/' }
      .map { |directory| directory.chop }
      .map { |d| File.join path, d }
    return [] if directories.empty?
    directories + directories
      .map { |d| directories_in d }
      .flatten
  end


end

ConfigComposer.new
