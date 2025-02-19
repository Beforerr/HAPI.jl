module HAPI

using HTTP
using JSON
using Dates
using CSV
using Tables

export hapi
export CDAWeb, CSA
export HAPIParameter, HAPIParameters

include("server.jl")
include("metadata.jl")
include("data.jl")
include("specs/parameter.jl")
include("utils.jl")
include("types.jl")

hapi() = get_servers()
hapi(server) = get_catalog(server)
hapi(server, dataset) = get_parameters(server, dataset)
hapi(server, dataset, parameters) = get_parameters(server, dataset, parameters)
hapi(server, dataset, parameters, tmin, tmax; kwargs...) = get_data(server, dataset, parameters, tmin, tmax; kwargs...)

end
