def to_do(text)
    matched = text.split
    if matched.count != 1 && matched.include?("#TODO")
        return "This includes a to-do item"
    elsif matched.count == 1 && matched.include?('#TODO')
        return "No to-do items"
    else
        return "No to-do items"
    end
end
