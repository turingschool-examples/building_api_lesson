class BookSerializer
    def self.format_deleted_book(book)
        {
            id_of_deleted_book: book.id,
            message: "You deleted a book"
        }
    end  
end 


# purpose of a serializer is to customize json 
# turn ruby objects into json (gems)