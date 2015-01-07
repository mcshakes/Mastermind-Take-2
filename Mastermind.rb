lib_dir = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib_dir)
require 'runner'

cli = Runner.new($stdin,$stdout)
cli.run
