# coding: utf8
"""
Данные понятия из базы данных
"""

class DatabaseConcept ():

	def __init__ (self):
	    self.id = 0
	    self.name = ""
	    self.type = 0

	@classmethod
	def read_by_id (cls, cursor, id):
		query = "SELECT id, type, name FROM qsl_concept WHERE id = " + str (id) + ";"
		cursor.execute (query)
		row = cursor.fetchone ()
		if row != None:
			concept = DatabaseConcept ()
			concept.id = row[0]
			concept.type = row[1]
			concept.name = row[2]
			return concept
		else:
			return None