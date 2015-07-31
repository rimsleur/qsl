# coding: utf8
"""
Древовидное представление суждения
"""

class PropositionTree ():

	def __init__ (self):
		self.root_node = None
		self.__node_stack = []
		self.__stack_index = 0

	def push_node (self, node):
		self.__node_stack.append (node)
		self.__stack_index += 1

	def pop_node (self):
		if self.__stack_index > 0:
			self.__stack_index -= 1
			return self.__node_stack.pop ()
		else:
			return None

	def print_tree (self):
		node = self.root_node

		k = 0
		while node != None:
			if node.child_index == 0:
				print "    "*k + node.text

			if node.child_index < len (node.children):
				idx = node.child_index
				node.child_index += 1
				self.push_node (node)
				node = node.children[idx]
				k += 1
			else:
				node = self.pop_node ()
				k -= 1