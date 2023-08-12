name: checkin

on:
  #push:
  #pull_request:
  #watch:
  #  types: [ started ]
  schedule:
    - cron: "8 11,17 * * *"
  workflow_dispatch:
  
jobs:
  GLaDOS-checkin:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - name: checkin
        env:
          COOKIE: ${{ secrets.COOKIE }}
        run: |
          chmod +x checkin.sh
          ./checkin.sh
