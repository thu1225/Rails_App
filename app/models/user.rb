class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: ~ /^(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@{1}((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,4}$/i, message: "phải nhập đúng định dạng "}
    validates :password, :presence => true, :confirmation => true, length: { minimum: 6}
    validates :sdt, presence: true,length: { is: 9 }, format: { with: /\d[0-9]\)*\z/, message: "phải là ký tự số "}
end
