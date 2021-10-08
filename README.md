Ansible aracı vasıtasıyla BigBlueButton, Scalelite, Greenlight, NFS storage, TURN özelleştirmelerini kurmayı amaçlar.

* **full-install.yml:** Tüm kurulum aşamalarını içerir. Yeni oluşturulacak ortam için gereklidir.
* **semi-install.yml:** Mevcut ortama yapılacak yeni BigBlueButton kurulumu için kullanılır. Bu playbook sıfırdan Scalelite, NFS ve TURN kurulumunu yapmaz ancak gerekli ayarlarını BigBlueButton üzerinde yapılandırır.

Örnek kullanım şekli;

`ansible-playbook full-install.yml -i inventories/example --key-file "~/key.pem" --vault-password-file "~/vault"` 

Kurulum parametreleri `/inventroies/group_vars/all.yml` dosyası içinde yer almaktadır.