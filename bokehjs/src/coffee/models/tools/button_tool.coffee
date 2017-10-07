import {DOMView} from "core/dom_view"
import {Tool, ToolView} from "./tool"
import {div, span, empty} from "core/dom"
import * as p from "core/properties"

export class ButtonToolButtonView extends DOMView
  className: "bk-toolbar-button"

  initialize: (options) ->
    super(options)
    @connect(@model.change, () => @render())
    @el.addEventListener("click", (e) => @_clicked(e))
    @render()

  render: () ->
    empty(@el)
    @el.disabled = @model.disabled
    @el.classList.add(@model.icon)
    @el.title = @model.tooltip

  _clicked: (e) ->

export class ButtonToolView extends ToolView

export class ButtonTool extends Tool
  icon: null

  @getters {
    tooltip: () -> @tool_name
  }

  @internal {
    disabled: [ p.Boolean, false ]
  }
