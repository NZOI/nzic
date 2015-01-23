
NZICModels::Engine.config.paths["db/migrate"].expanded.each do |expanded_path|
  NZIC::Application.config.paths["db/migrate"] << expanded_path
end

