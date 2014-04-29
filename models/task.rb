class Task

    attr_accessor :title, :where, :duration
    def initialize(title, where, duration)
        @title = title
        @where = where
        @duration = duration
    end
end
