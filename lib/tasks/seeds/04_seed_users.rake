# Tarea para generar seed de usuarios
namespace :seed do
  desc "Seed users"
  task users: :environment do
    if User.count == 0
      User.create!([{
        email: 'usuariofalso1@test.cl',
        password: '123456',
        name: 'Juan falso',
        lastname: 'Falsisimo',
        gamer_id: 'el_falso_test',
      },
      {
        email: 'usuariofalso2@test.cl',
        password: '123456',
        name: 'Pedro falso',
        lastname: 'Fake',
        gamer_id: 'el_fake',
      },
      {
        email: 'usuariofalso3@test.cl',
        password: '123456',
        name: 'Diego falso',
        lastname: 'Farsane',
        gamer_id: 'el_farsante_remix',
      },
      ])

      p "Created #{User.count} users"
    else
      p "No users created"
    end
  end
end
