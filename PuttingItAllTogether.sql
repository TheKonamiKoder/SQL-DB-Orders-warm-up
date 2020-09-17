SELECT tbItems.ITEM_NAME, tbItemQuantities.QUANTITY 
FROM tbItemQuantities
LEFT JOIN  tbItems
ON tbItems.ITEM_CODE = tbItemQuantities.ITEM_CODE 
AND tbItemQuantities.ORDER_ID = (
		SELECT ORDER_ID FROM tbOrderIDs
		WHERE UNAME = (
			SELECT UNAME FROM tbPerson
			WHERE FNAME = 'Kaivy' AND LNAME = 'Pullankdam'
))

