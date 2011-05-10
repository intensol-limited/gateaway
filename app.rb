require 'sinatra'

get '/' do
  @url = params[:url]
  haml :index
end

__END__

@@ layout
%html
  %body
    = yield

@@ index
%p
  You are about to go to:
  = @url
%p
  We cant guaranty safeness of this url
%div
  %a{:href => @url}
    Yes, I'll do it
  &nbsp;
  %a{:href => "javascript:history.back();"}
    No, I'm scary
