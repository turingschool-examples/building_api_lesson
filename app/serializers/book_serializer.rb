class BookSerializer
    include JSONAPI::Serializer
    attributes :title, :author

    attribute :summary_length do |object|
        object.summary.length
    end 



    # def self.all_books(books)
    #     {
    #         "data": books.map do |book|
    #                 {
    #                     "id": book.id,
    #                     "type": "book",
    #                     "attributes": {
    #                         "title": book.title,
    #                         "author": book.author,
    #                         "summary_length": book.summary.length
    #                     }
    #                 }
    #             end
    #     }

    # end 

    # def self.one_book(book)
    #     {
    #         "data": 
    #                 {
    #                     "id": book.id,
    #                     "type": "book",
    #                     "attributes": {
    #                         "title": book.title,
    #                         "author": book.author
    #                     }
    #                 }
    #     }
    # end 

end 