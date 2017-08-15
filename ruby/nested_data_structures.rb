
#break down some sections of Air Force One by not only its contents, but also who is allowed where

air_force_one = {
	presidents_suite: {
		actual_name: 'The Presidents Suite',
		contents: {
			beds: 1,
			full_bathrooms: 1,
			couches: 7500
		},
		who_is_welcome_ps: [
			'President',
			'First Lady',
			'Kevin Spacey'
		]
	},
	conference_area: {
		actual_name: 'The Conference and Dining Area',
		contents: {
			chairs: 300,
			tables: 4,
			televisions: 77,
			phones: 0,
			food: 0
		},
		who_is_welcome_ca: [
			'President',
			'First Lady',
			'Senior Staff',
			'Special guests'
		]
	},
	press_area: {
		actual_name: 'Press Section',
		contents: {
			chairs: 2,
			tables: 27,
			hyennas: 5000,
			televisions: 1,
			humans: 0
		},
		who_is_welcome_pa: [
			'President',
			'First Lady',
			'Press team members',
			'Flight staff'
		]
	}
}
p air_force_one

#access itens using indicies
p air_force_one[:presidents_suite][:who_is_welcome_ps][2]

# add items to existing data structures
p air_force_one[:press_area][:who_is_welcome_pa].push('fake news')

#using indicies to add emphasis to speicific pieces of data within the array
p air_force_one[:presidents_suite][:who_is_welcome_ps][2].upcase

# recalling specific sections of data
p air_force_one[:press_area][:contents]

