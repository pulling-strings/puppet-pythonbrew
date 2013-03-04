Puppet::Type.newtype(:python_version) do
  @doc = "Manage Pythonbrew installations."

  ensurable

  newparam(:name) do
    desc "The version of the Python to be managed."
    isnamevar
  end

  newproperty(:default_use) do
    desc "Should this be system default?"
    defaultto false
  end
end
