class CoreExt
  Hash.class_eval do
    def method_missing(key, *args)
      text = key.to_s
      if text[-1,1] == "="  # if the key ends with = set a value
        self[text.chop] = args[0] # Strip = from key
      else                               # otherwise
        self[text] # just return the key value
      end
    end
  end
end