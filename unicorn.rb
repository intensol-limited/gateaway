root_dir = File.expand_path('..', __FILE__)
worker_processes 4
working_directory root_dir

if ['staging', 'production', :staging, :production].include?(ENV['RAILS_ENV'])
  listen File.join(root_dir, 'unicorn.sock'), :backlog => 64
else
  listen 3000
end

timeout 30
pid File.join(root_dir, 'unicorn.pid')
