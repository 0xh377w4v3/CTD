# **Parte 1 - App de pedidos online**

## **“Os restaurantes”**

### **App de pedidos online “Os restaurantes”**

Você deseja construir um banco de dados que armazene os dados de um aplicativo
de pedido de comida online.

Os restaurantes são cadastrados no aplicativo com as seguintes informações: nome,
foto, endereço, horário de funcionamento e classificação de 1 a 5.

Cada restaurante publicou quais pratos oferece:

Para cada prato são armazenados seu nome, descrição, uma foto e o preço final
para o cliente.

E cada prato pertence a uma categoria. As categorias são caracterizadas pelo seu
nome, uma breve descrição. Elas podem ser: entrada, prato principal, bebidas,
extras.

### **App de pedidos online “Os restaurantes”**

Além disso, para cada um dos pratos, pretende-se conhecer
detalhadamente os ingredientes.

Por fim, o sistema realiza o cadastro dos pedidos, acompanhando a data
e hora, produtos, quantidade, preço, total, esclarecimentos, endereço de
entrega e data e hora do embarque.

### **App de pedidos online “Os restaurantes”**

**Como faremos?**

Em grupos de no máximo 4 membros, identifique:

- Entidades
- Atributos

Trabalharemos em salas individuais e depois compartilharemos os resultados.
Podemos usar draw.io para projetar suas entidades.

# **Parte 2 - App de Pedidos Online**

## **“Os usuários”**

### **App de pedidos online “Os usuários”**

Agora, no mesmo caso, vamos pensar nos usuários.

Os usuários se cadastram pela primeira vez onde são solicitados:
nome completo, telefone, endereço, número, complemento,
cidade, estado, observações, e-mail e senha.

Existem diferentes tipos de usuário, temos assinaturas,
corporativas ou pessoais. Os registros de tipos de usuário devem
ter: a filiação (corporativa ou pessoal) uma data de registro e uma
data de validade para renovar seu tipo de usuário.

Cada renovação é registrada.

### **App de pedidos online “Os usuários”**

Os usuários também têm um status que lhes permite cancelar a
assinatura se não quiserem mais fazer o pedido online. Não apague o
registro! Ele apenas entra em um estado "baixado".

Agora, não esqueçamos que o usuário que solicitou esse pedido
também deve estar cadastrado na entidade de pedidos que criamos
para o restaurante. Caso não o tenha levado em consideração, atualize
a entidade.
