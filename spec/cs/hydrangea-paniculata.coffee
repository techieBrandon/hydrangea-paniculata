require ['lib/hydrangea-paniculata'], (hydrangea) ->
  describe "hydrangea-paniculata", () ->
    it "controls a namespace", () ->
      expect(hydrangea).toBeDefined()
    it "has a start method", () ->
      expect(hydrangea.start).toBeDefined()
    it "has a terminate method", () ->
      expect(hydrangea.terminate).toBeDefined()
  describe "on start", () ->
    it "runs jasmine specs", () ->
      expect(hydrangea.start()).toEqual(0)
