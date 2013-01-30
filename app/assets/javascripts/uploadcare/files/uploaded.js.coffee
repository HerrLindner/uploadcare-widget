uploadcare.whenReady ->
  {namespace, jQuery: $, utils} = uploadcare

  namespace 'uploadcare.files', (ns) ->

    class ns.UploadedFile extends ns.BaseFile
      constructor: (settings, fileIdOrUrl) ->
        super

        id = utils.uuidRegex.exec(fileIdOrUrl)
        if id
          @fileId = id[0]
          url = utils.cdnUrlModifiersRegex.exec(fileIdOrUrl)
          if url and url[1]
            @cdnUrlModifiers = url[1]
          @__uploadDf.resolve(this)
        else
          @__uploadDf.reject('baddata', this)

      __startUpload: ->
        # nothing to do