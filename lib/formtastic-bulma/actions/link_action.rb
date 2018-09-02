# <form...>
#   <fieldset class="form-actions">
#     <a class="btn" href="">Link</a>
#   </fieldset>
# </form>
module FormtasticBulma
  module Actions
    class LinkAction < Formtastic::Actions::LinkAction
      include Base
    end
  end
end