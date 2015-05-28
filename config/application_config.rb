configatron.community_name = "Community_Engine"
configatron.configure_from_hash(

  :app_host => "http://localhost:3000", #override this in your application.yml

  :community_name => "Gym Buddies",

  :community_tagline => "Find a gymbuddy to push you to the next level",
  :community_description =>  "A wonderful social network for gym goers who want to find more people to go workout with",
  :support_email =>  "orelmfligelman@gmail.com",
  :meta_description => 'A description of your community for use in META tags.',
  :meta_keywords => 'keywords for use in META tags',

  # Comment this out if you want to infer the locale
  # off of the http headers
  # :community_locale => "en",

  :allow_anonymous_commenting => false,
  :allow_anonymous_forum_posting => false,
  :require_captcha_on_signup => false,

  #:recaptcha_pub_key => YOUR_PUB_KEY,
  #:recaptcha_priv_key => YOUR_PRIV_KEY,
  # uncomment these keys if you turn captcha on for commenting, forums or signup

  #:akismet_key => YOUR_KEY,
  # uncomment this if you want to use akismet for comment filtering. Go to http://en.wordpress.com/api-keys/

  #uncomment below to use omniauth providers for login and signup
  :auth_providers => {
    :instagram => {:key => 'c20f38aa0c4d47b882c6fc407d594631', :secret => '7e8931b162154140aca968a8161ee923'},
    :facebook => {:key => '1503333586599184', :secret => '258ca59ed9352923034291c8354172a1'}
    },

  # for SEO reasons sometimes you should control the robots on how they have to handle your content
  # listing of stuff which points to single posts or entries should normally not been indexed,
  # but the robot should follow the internal link to show the post
  :robots_meta_list_content => 'noindex,follow',
  # the post itself should be indexed;
  # when links are included and they point to external sites, the robot should not follow
  :robots_meta_show_content => 'index,nofollow',

  # min and max age for users to use the site
  :min_age => 16,
  :max_age => 90,

  :authlogic => {
    :password_length => 6..20,
    :login_length => 1..100,
    :email_length => 3..100,
    :email_case_sensitive => true
  },

  :regexes => {
    :login => /\A[\sA-Za-z0-9_-]+\z/,
    :email => /\A([^@\s]+)@((?:[-a-z0-9A-Z]+\.)+[a-zA-Z]{2,})\z/
  },

  :photo => {
    :missing_thumb => '/assets/icon_missing_thumb.gif',
    :missing_medium => "/assets/icon_missing_medium.gif",
    :paperclip_options => {
      :default_url => "http://localhost:3000",
      :path => "#{Rails.root}/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename",
      :styles => {
        :thumb => {
          :geometry => "100x100#",
          :processors => [:cropper]
        },
        :medium => {
          :geometry => "290x320#",
          :processors => [:cropper]
        },
        :large => "465>"
      }
    },
    :validation_options => {
      :max_size => 3,
      :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']
    }
  },

  :feature => {
    :use_thumbs => true,
    :paperclip_options => {
      :styles => {
        :original => '465>',
        :thumb => "45x45#",
        :large => "635x150#"
      }
    },
    :validation_options => {
      :max_size => 3,
      :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']
    }
  },

  :clipping => {
    :paperclip_options => {
      :styles => {
        :thumb => "100x100#",
        :medium => "290x320#",
        :large => "465>"
      }
    },
    :validation_options => {
      :max_size => 3,
      :content_type => ['image/jpg', 'image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png']
    }
  },

  :reserved_logins => [
    'account',
    'activities',
    'admin',
    'advertise',
    'ads',
    'application',
    'assets',
    'authorizations',
    'base',
    'categories',
    'choices',
    'clippings',
    'clipping_images',
    'comments',
    'countries',
    'events',
    'favorites',
    'featured',
    'forums',
    'friendships',
    'friendship_statuses',
    'home',
    'homepage_features',
    'images',
    'invitations',
    'javascripts',
    'login',
    'logout',
    'manage_photos',
    'messages',
    'metro_areas',
    'moderatorships',
    'monitorships',
    'new_clipping',
    'pages',
    'photos',
    'polls',
    'popular',
    'popular_rss',
    'posts',
    'recent',
    'roles',
    'rsvps',
    'sb_posts',
    'search',
    'sessions',
    'signup',
    'sitemap',
    'site_index',
    'sb_posts',
    'sitemap',
    'states',
    'statistics',
    'stylesheets',
    'tags',
    'theme',
    'topics',
    'users',
    'votes'
  ]
)