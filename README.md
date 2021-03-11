# SumoHeya

SumoHeya provide Rikishi's info.  
You can search Rikishi by 

- SumoHeya(room)
- Birthplace
- Shikona

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sumo_heya', git: 'git@github.com:watsumi/sumo-heya.git'
```

And then execute:

    $ bundle install

## Usage

Case: By SumoHeya(room)
```
 SumoHeya::Rikishi.find_by_room('宮城野')
```

Case: By BirthPlace
```
 SumoHeya::Rikishi.find_by_birthplace('モンゴル')
```

Case: By Shikona
```
 SumoHeya::Rikishi.find_by_shikona('白鵬')
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SumoHeya project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sumo_heya/blob/master/CODE_OF_CONDUCT.md).
