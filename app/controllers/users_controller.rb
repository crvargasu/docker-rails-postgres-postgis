class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    records = execute_statement('SELECT id, ST_AsGeoJSON(ST_TRANSFORM(geom, 4326))
    FROM public."Estab_Ed_Basica"'+
    "where ST_Distance(
        ST_TRANSFORM(geom, 4326)::geography,
       'SRID=4326;POINT(-70.59504699998331 -33.41757247754951)'::geography --rellenar con direccion correcta
    ) < 1000")
    list = []
    
    records.each do |r|
      list << r["st_asgeojson"].tr('','')
      # puts r["st_asgeojson"]
    end
    render json: list
  end
 
end
