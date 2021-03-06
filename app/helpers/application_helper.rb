

module ApplicationHelper

    def login_helper style = '' 
     if current_user.is_a?(GuestUser) 
      (link_to "Sign Up", new_user_registration_path, class: style) +  
      " ".html_safe +
       (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style 
        end 
    end

    def source_helper(styles)
         if session[:source] 

         greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', 
         contact_path } if you'd like to work together."
         content_tag(:div, greeting.html_safe, class: styles)
           end 
    end 

     def copyright_generator
       KarisViewTool::Renderer.copyright 'Benshalom Kariuki','All rights reserved'
     end 

  #    def nav_helper style, tag_type
  # nav_links = <<NAV
  # <#{tag_type}><a href="#{root_path}" class="#{style}">Home</a></#{tag_type}>
  # <#{tag_type}><a href="#{about_me_path}" class="#{style}">About Me</a></#{tag_type}>
  # NAV
  #       nav_links.html_safe
  #    end 


def alerts
   alert = (flash[:alert]  || flash[:error]  || flash[:notice])
   if alert 
    alert_generator alert 
   end
end
def alert_generator msg
  js add_gritter(msg, title:  "Benshalom Kariuki Portfolio", sticky: false) 
end

end
