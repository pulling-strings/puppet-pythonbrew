Puppet::Type.type(:python_version).provide(:python_version) do
  desc "Pythonbrew support."
 
  has_command(:pythonbrewcmd, '/usr/local/pythonbrew/bin/pythonbrew') do
     is_optional
     environment :PYTHONBREW_ROOT => '/usr/local/pythonbrew', :HOME => '/home/vagrant'
  end

  def create
    pythonbrewcmd "install", resource[:name]
    set_default if resource.value(:default_use)
  end

  def destroy
    pythonbrewcmd "uninstall", resource[:name]
  end

  def exists?
    begin
      pythonbrewcmd("list").split("\n").any? do |line|
        line.include?(resource[:name])
      end
    rescue Puppet::ExecutionFailure => detail
      raise Puppet::Error, "Could not list pythons: #{detail}"
    end
  end

  def default_use
    begin
       pythonbrewcmd("list").split("\n").any? do |line|
         line.include?(resource[:name]) && line.include?('*')
       end
    rescue Puppet::ExecutionFailure => detail
      raise Puppet::Error, "Could not list pythons: #{detail}"
    end
  end

  def default_use=(value)
    set_default if value
  end

  def set_default
    pythonbrewcmd "switch", resource[:name]
  end
end
