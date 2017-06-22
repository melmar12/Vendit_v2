class Document < ActiveRecord::Base
  # This method associates the attribute ":avatar" with a file attachment
  validates :doc,
    # attachment_content_type: {content_type: /\Aimage\/.*\Z/},
    attachment_size: { less_than: 8.megabytes }

  has_attached_file :doc, styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  validates_attachment_content_type :doc, :content_type =>[/\Aimage\/.*\Z/,"application/pdf","application/vnd.ms-excel",
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword",
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
             "text/plain"]
end
