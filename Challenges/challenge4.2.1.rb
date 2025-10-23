open_file(file_name) -> file_pointer
read_data(file_pointer) -> data
write_data(file_pointer, data)
close_file(file_pointer)

class File
    def initialize(name)
        @file_name = name
    end

    def open 
        @file_pointer = open_file(@file_name)
        return @file_pointer
    end

    def read 
        read_data(@file_pointer)
    end

    def write(data)
        write_data(@file_pointer, data) 
    end

    def close 
        close_file(@file_pointer) 
    end

end