# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready $(->

  $('.edit').froalaEditor(
      toolbarInline: true
      charCounterCount: false
      toolbarButtons: [
        'bold'
        'italic'
        'underline'
        'strikeThrough'
        'color'
        'emoticons'
        '-'
        'paragraphFormat'
        'align'
        'formatOL'
        'formatUL'
        'indent'
        'outdent'
        '-'
        'insertImage'
        'insertLink'
        'insertFile'
        'insertVideo'
        'undo'
        'redo'
        'html'
      ]
      inlineStyles:
        'Big Red': 'font-size: 20px; color: red;'
        'Small Blue': 'font-size: 14px; color: blue;'
      imageManagerLoadURL: "/images.json"
      imageManagerLoadMethod: 'GET'
      )

  $('[contenteditable=true]').mentionsInput(
    source: '/documents.json'
    showAtCaret: true)
)
