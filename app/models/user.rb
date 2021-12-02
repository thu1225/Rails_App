class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "phải nhập đúng định dạng email (xxx@gmail.com)"}
    validates :password, :presence => true, :confirmation => true, length: { minimum: 6}
    validates :sdt, presence: true,length: { is: 9 }, format: { with: /\d[0-9]\)*\z/, message: "phải là ký tự số "}
end
