def reading_time(text_length)
    words = text_length.split
    return (words.length / 200.to_f).ceil
end