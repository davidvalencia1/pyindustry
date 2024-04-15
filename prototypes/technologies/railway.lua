data.raw.technology['railway'].icon = '__pyindustry__/graphics/technology/railway-mk01.png'
data.raw.technology['railway'].icon_size = 128
data.raw.technology['railway'].icon_mipmaps = nil
data.raw.technology['railway'].prerequisites = {'steel-processing'}
data.raw.technology['railway'].unit = {
    count = 150,
    ingredients = {
        {'automation-science-pack', 1},
    },
    time = 45
}

if mods['pycoalprocessing'] then
    TECHNOLOGY('railway'):add_prereq('wood-processing'):remove_prereq('steel-processing')

    TECHNOLOGY {
        type = 'technology',
        name = 'railway-mk02',
        icon = '__pyindustry__/graphics/technology/railway-mk02.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'railway', 'niobium', 'nexelit'},
        dependencies = {'railway'},
        effects = {},
        unit = {
            count = 250,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
            },
            time = 45
        }
    }
end

if mods['pyhightech'] then
    TECHNOLOGY {
        type = 'technology',
        name = 'railway-mk03',
        icon = '__pyindustry__/graphics/technology/railway-mk03.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'railway-mk02'},
        dependencies = {'railway-mk02'},
        effects = {},
        unit = {
            count = 250,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1}
            },
            time = 45
        }
    }
end

if mods['pyalternativeenergy'] then

    TECHNOLOGY {
        type = 'technology',
        name = 'railway-mk04',
        icon = '__pyindustry__/graphics/technology/railway-mk04.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'railway-mk03','intermetallics-mk03','battery-mk04'},
        dependencies = {'railway-mk03'},
        effects = {},
        unit = {
            count = 400,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
                {'chemical-science-pack', 1},
                {'production-science-pack', 1},
            },
            time = 45
        }
    }
end
