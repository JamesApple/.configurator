# Creates a copy of a passed file into the BACKUP_DIRECTORY folder
# It subtracts the RELATIVE_DIRECTORY 
class BackupService
  BACKUP_DIRECTORY = 'backup'
  RELATIVE_DIRECTORY = '~'

  def initialize(path)
    @path = path
  end

  def call
    
  end

  def filename
    Time.now.to_1
  end
end
