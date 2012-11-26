# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'coffeescript', :input => 'src'
guard 'coffeescript', :input => 'test'


guard 'livereload' do
  watch(%r{test/.+\.(css|js|html)})
  watch(%r{src/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
end
