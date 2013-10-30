namespace :assets do
  desc 'Precompile assets'
  task :precompile do
    sh "bundle exec sass --update _scss:css"
    sh "bundle exec jekyll build --trace"
  end
end

task :default => ["assets:precompile"]
