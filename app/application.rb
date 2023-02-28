class Application

    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
  
      # projects get/read 
    if req.path.match(/projects/) && req.get? #controller interprates the request given from the front-end

        #check if requesting all projects or an individual project
    if req.path.split("/projects/").length === 1 
        # retrieve information from model and send back information to the front-end
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "projects successfully requested", :projects => Project.all}.to_json(:include => :tasks) ]]
      else 
        project = Project.find_by_path(req.path, "/projects/")
        return [200, { 'Content-Type' => 'application/json' }, [ {:message => "project successfully requested", :project => project}.to_json(:include => { :boards => {:include => :tasks}}) ]]
      end #check if all projects or specific project

      # projects post/create (tested)
    elsif req.path.match(/projects/) && req.post?
        hash = JSON.parse(req.body.read)
        project = Project.create_new_project_with_defaults(hash)
  
        if project.save
          return [200, { 'Content-Type' => 'application/json' }, [ {:message => "project successfully created", :project => project}.to_json(:include => :tasks) ]]
        else
          return [422, { 'Content-Type' => 'application/json' }, [ {:error => "project not added"}.to_json ]]
        end #end validation of post
