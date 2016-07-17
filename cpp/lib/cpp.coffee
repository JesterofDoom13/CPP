CppView = require './cpp-view'
{CompositeDisposable} = require 'atom'

module.exports = Cpp =
  cppView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @cppView = new CppView(state.cppViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @cppView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'cpp:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @cppView.destroy()

  serialize: ->
    cppViewState: @cppView.serialize()

  toggle: ->
    console.log 'Cpp was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
