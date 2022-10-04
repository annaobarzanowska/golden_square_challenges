def match(text)
    matched = text.split
    if matched.include?("#TODO")
        return "There's a to do item"
    else
        return "No to do items. "
    end
end

puts match('this is a #TODO list')
