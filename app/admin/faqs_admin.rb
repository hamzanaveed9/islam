Trestle.resource(:faqs) do
  menu do
    item :faqs, icon: "fa fa-faq"
  end

  table do
    column :question
    column :answer
  end


  form do |faq|
    tab :faq do
      text_field :question
      text_field :answer
    end
  end
end
