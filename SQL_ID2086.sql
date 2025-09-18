/*


*/

select  COUNT(DISTINCT CASE when message_sender_id < message_receiver_id 
    then CONCAT(message_sender_id,message_receiver_id)
    else CONCAT(message_receiver_id,message_sender_id) END) AS uniq_pair
from whatsapp_messages
