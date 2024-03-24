module ApplicationHelper
    include Pagy::Frontend #Podkluczenie "Pagy" 
    
    
    def pagination(obj)# Pagy "gem pagy" razbiw na stranicy Podkluchenie
      raw(pagy_bootstrap_nav(obj)) if obj.pages > 1
    end
    #//////////////////////////////////////////////////////////////////////////////////////
  
    
    
    
    # Wywodim nadpis w okne
      def full_title(page_title = "")
        base_title = "Пошук"
        if page_title.present?
          "#{page_title} | #{base_title}"
        else
          base_title
        end
    end       
    
end
