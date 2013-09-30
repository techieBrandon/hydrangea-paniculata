define [], () ->
  class HydrangeaPaniculataRunner

    welcomeMsg = 'Welcome to Hydrangea Paniculata'
    initMsg = "Initialize Runner"
    executeMsg = "Execution"

    constructor: () ->
      console.log welcomeMsg

    init: () =>
      console.log initMsg

    execute: () =>
      console.log executeMsg

  classInterface=
    terminate: (rc) ->
      #phantom.exit(rc)
      rc
    start: () ->
      try
        runner = new HydrangeaPaniculataRunner()
        runner.init()
        runner.execute()
        classInterface.terminate(0)
      catch err
        console.log err
        classInterface.terminate(1)

  classInterface
