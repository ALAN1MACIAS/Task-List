json.extract! userconfig, :id, :nombre, :apellidop, :apellidom, :descripcion, :created_at, :updated_at
json.url userconfig_url(userconfig, format: :json)
