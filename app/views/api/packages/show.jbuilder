json.extract! @package, :name, :description
json.set! :author do
  json.extract! @package.user, :name
end
json.extract! @package.versions.last, :version
