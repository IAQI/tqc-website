#!/bin/bash
# Create a complete new year structure for the TQC website

YEAR=$1

if [ -z "$YEAR" ]; then
  echo "Usage: ./scripts/create-year.sh <year>"
  exit 1
fi

# Define theme colors for each year (rotate through unused colors)
# 2024: #f3a31b (orange)
# 2025: #4e8803 (green)
# 2026: #1e88e5 (blue)
# 2027: #8e24aa (purple)
# 2028: #e53935 (red)
# Add more colors as needed
case $YEAR in
  2026)
    THEME_COLOR="#1e88e5"
    ;;
  2027)
    THEME_COLOR="#8e24aa"
    ;;
  2028)
    THEME_COLOR="#e53935"
    ;;
  2029)
    THEME_COLOR="#00897b"
    ;;
  2030)
    THEME_COLOR="#c62828"
    ;;
  *)
    THEME_COLOR="#1e88e5"  # default blue
    ;;
esac

echo "Creating structure for year ${YEAR}..."
echo "Using theme color: ${THEME_COLOR}"

# Create content using Hugo archetype
hugo new content ${YEAR} --kind year

# Create data files
echo "[]" > data/accepted-papers-${YEAR}.json
echo "[]" > data/posters-${YEAR}.json

cat > data/locations-${YEAR}.yml << EOF
# Location data for ${YEAR}
- key: entrance_hall
  label: Entrance Hall
  description: TBD
- key: auditorium
  label: Auditorium
  description: TBD
- key: room1
  label: Meeting Room 1
  description: TBD
- key: room2
  label: Meeting Room 2
  description: TBD
- key: poster
  label: Entrance Hall
  description: TBD
- key: industry
  label: Industry Restaurant
  description: TBD
EOF

cat > data/schedule-${YEAR}.yml << EOF
# Schedule data for ${YEAR}
- day: '${YEAR}-09-09'
  start: '09:00'
  sessions:
    - session: __registration
      time: '09:00'
      location: entrance_hall
    - session: __welcomingremarks
      time: '10:15'
      location: auditorium
    - session: invited_morimae
      time: '10:30'
      location: auditorium
    - session: __lunch
      time: '11:30'
      location: entrance_hall
    - session: contributed11a
      time: '13:30'
      location: auditorium
    - session: contributed11b
      time: '13:30'
      location: room1
    - session: contributed11c
      time: '13:30'
      location: room2 
    - session: __break
      time: '14:30'
      location: entrance_hall
    - session: contributed12a
      time: '15:00'
      location: auditorium
    - session: contributed12b
      time: '15:00'
      location: room1
    - session: contributed12c
      time: '15:00'
      location: room2
    - session: light_dinner
      time: '17:00'
      location: entrance_hall
    - session: poster_monday
      time: '18:00'
      location: poster
    - session: __endofday
      time: '20:30'

- day: '${YEAR}-09-10'
  sessions:
    - session: invited_khurana
      time: '09:00'
      location: auditorium
    - session: __break
      time: '10:00'
      location: 
        - entrance_hall
        - room2        
    - session: industry
      time: '17:10'
      location: auditorium
    - session: industry_dinner
      time: '19:00'
      location: industry
    - session: __endofday
      time: '21:00'


- day: '${YEAR}-09-11'
  sessions:
    - session: __updates&announcements
      time: '09:00'
    - session: tutorial_brown
      time: '09:15'
    - session: invited_ananth
      time: '10:30'
    - session: __break
      time: '11:15'
    - session: invited_may
      time: '11:45'
    - session: contributed3
      time: '12:30'
    - session: __lunch
      time: '12:00'
    - session: __excursion
      time: '12:30'
    - session: __banquet
      time: '19:00'
    - session: __endofday
      time: '22:00'


- day: '${YEAR}-09-12'
  sessions:
    - session: __updates&announcements
      time: '09:00'
    - session: __break
      time: '11:15'
    - session: __lunch
      time: '13:10'
    - session: __break
      time: '14:40'
    - session: __break
      time: '16:20'
    - session: poster
      time: '16:50'
    - session: rump
      time: '17:45'
    - session: business
      time: '18:00'
    - session: __dinner
      time: '20:00'

- day: '${YEAR}-09-13'
  sessions:
    - session: __updates&announcements
      time: '09:00'
    - session: contributed5a
      time: '09:10'
    - session: __break
      time: '10:50'
    - session: close
      time: '13:10'

EOF

# Create assets/styles file if needed
cat > themes/devfest-theme-hugo/assets/style/theme-${YEAR}.scss << EOF
// Custom styles for TQC ${YEAR}
@use "root";
@use "variables";

@use "partials/base";
@use "partials/header";
@use "partials/main";
@use "partials/footer";
@use "partials/buttons";
@use "partials/socials";
@use "partials/jumbo";
@use "partials/banner";
@use "partials/hero";
@use "partials/table_of_contents";
@use "partials/speakers_shortcode";
@use "partials/tickets";
@use "partials/partners_group";
@use "partials/tags";
@use "partials/icons";
@use "partials/type";
@use "partials/form";
@use "partials/album";
@use "partials/paper";

@use "pages/home";
@use "pages/sessions";
@use "pages/session";
@use "pages/partners";
@use "pages/partner";
@use "pages/schedule";
@use "pages/speakers";
@use "pages/speaker";
@use "pages/blogs";
@use "pages/blog";
@use "pages/kids";
@use "pages/team";
@use "pages/faq";
@use "pages/code_of_conduct";
@use "pages/with_banner";
@use "pages/text_page";
@use "pages/papers";

:root {
    --primary: ${THEME_COLOR};
}  
EOF

EOF

# Create speakers image directory
mkdir -p static/images/${YEAR}

# Add year configuration to hugo.toml
echo ""
echo "Updating hugo.toml configuration for ${YEAR}..."

# Check if the year section already exists in hugo.toml
if grep -q "\[params\.${YEAR}\]" hugo.toml; then
  echo "Updating existing [params.${YEAR}] section..."
  
  # Use sed to update the themeColor for the existing year
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS sed syntax
    sed -i '' "s|^\(\[params\.${YEAR}\]\)$|\1|; /^\[params\.${YEAR}\]/,/^\[/ s|themeColor = \"[^\"]*\"|themeColor = \"${THEME_COLOR}\"|" hugo.toml
  else
    # Linux sed syntax
    sed -i "s|^\(\[params\.${YEAR}\]\)$|\1|; /^\[params\.${YEAR}\]/,/^\[/ s|themeColor = \"[^\"]*\"|themeColor = \"${THEME_COLOR}\"| " hugo.toml
  fi
else
  echo "Adding new [params.${YEAR}] section..."
  
  # Add params section for the year
  cat >> hugo.toml << EOF

[params.${YEAR}]
  city = "TBD"
  timeanddate_cityid = 775 ## Placeholder ID, update as needed!
  themeColor = "${THEME_COLOR}"
  [params.${YEAR}.logos]
    jumbo = "/images/${YEAR}/background-${YEAR}.png"
    header = "/images/${YEAR}/tqc-logo-${YEAR}.png"
    banner = "/images/${YEAR}/banner-${YEAR}.jpg"
EOF
fi

# Check if the menu section already exists
if grep -q "\[\[menu\.${YEAR}\]\]" hugo.toml; then
  echo "Menu section for ${YEAR} already exists, skipping..."
else
  echo "Adding menu section for ${YEAR}..."
  
  # Add menu section for the year
  cat >> hugo.toml << EOF

  [[menu.${YEAR}]]
    name = "Home"
    weight = 10
    identifier = "home"
    pageRef = '/${YEAR}'
  [[menu.${YEAR}]]
    name = "Technical Program"
    weight = 20
    identifier = "technical-program"
  [[menu.${YEAR}]]
    name = "Attend"
    weight = 30
    identifier = "attend"
  [[menu.${YEAR}]]
    name = "Sponsors"
    weight = 40
    identifier = "sponsors"
    pageRef = "/${YEAR}/partners"
  [[menu.${YEAR}]]
    name = "Committees"
    weight = 50
    identifier = "committees"
    pageRef = "/${YEAR}/team"
EOF
fi

echo ""
echo "✓ Content files created in content/${YEAR}/ (using Hugo archetype)"
echo "✓ Data files created in data/"
echo "✓ Style file created in themes/devfest-theme-hugo/assets/style/theme-${YEAR}.scss"
echo "✓ Logo directory created in static/images/${YEAR}/"
echo "✓ Configuration added to hugo.toml"
echo ""
echo "Next steps:"
echo "1. Update content files in content/${YEAR}/"
echo "2. Configure data files in data/*-${YEAR}.*"
echo "3. Customize styles in themes/devfest-theme-hugo/assets/style/theme-${YEAR}.scss"
echo "4. Add logo images to static/images/${YEAR}/"
echo "5. Update params.currentYear in hugo.toml to ${YEAR}"
echo "6. Update netlify.toml redirect from '/' to '/${YEAR}/'"
echo "7. Update hugo.toml server redirect from '/' to '/${YEAR}/'"

