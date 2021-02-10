class RegistrationsController < Devise::RegistrationsController

    def new 
        super
        current_uri = request.env['PATH_INFO']
        puts "=====> new users #{current_uri}"

        if current_uri == "/users/sign_up"
            puts "=====> new registration "
            render :new
        end
    end

    def create
        current_uri = requeest.env['PATH_INFO']
        puts "=====> create users #{current_uri}"

        if current_uri == "/users/sign_up"
            super
        end
    end

private
def after_sign_up_path_for(resource)
    '/users/sign_in'
end

end