module InheritMethods 
    module ClassMethods
        def check_by_path(path, url)
            id = path.split(url).last.to_i 
            check_by_id(id)
        end
    end
end