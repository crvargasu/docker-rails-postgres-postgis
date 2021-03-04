class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    records = execute_statement('SELECT ST_AsGeoJSON(ST_TRANSFORM(geom, 4326))::text::json
    FROM public."Estab_Ed_Basica"'+
    "where ST_Distance(
        ST_TRANSFORM(geom, 4326)::geography,
       'SRID=4326;POINT(-70.59504699998331 -33.41757247754951)'::geography --rellenar con direccion correcta
    ) < 1000")
    render json: records
  end
 
end
