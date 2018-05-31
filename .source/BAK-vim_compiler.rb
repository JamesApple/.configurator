class VimCompiler
  BASE_DIRECTORY = Dir.pwd
  COMPONENT_DIRECTORY = File.join BASE_DIRECTORY, 'vim'
  VIMRC_PATH = File.join BASE_DIRECTORY, 'output', '.vimrc'
  VIMRC_SYM_PATH = File.join ENV['HOME'], '.vimrc'
  def initialize; end

  def call
    p COMPONENT_DIRECTORY
    stitch_components get_components
    link_vimrc
  end

  def get_components
    filenames = `cd #{COMPONENT_DIRECTORY} && ls`
    component_paths = filenames.split("\n").map {|filename| File.join COMPONENT_DIRECTORY, filename}
  end

  def stitch_components component_paths
    vimrc = File.new VIMRC_PATH, 'w+'
    component_paths.each do |path|
      component = File.read path
      vimrc << component
    end
  end

  def link_vimrc
    File.delete VIMRC_SYM_PATH if File.exist? VIMRC_SYM_PATH
    File.symlink VIMRC_PATH, VIMRC_SYM_PATH
  end
end

