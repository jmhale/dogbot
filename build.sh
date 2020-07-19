## Generate Hubot instance
yo hubot \
	--owner="James Hale <james@hale.dev>"\
	--name="dogbot"\
	--description="I am smol pupper, fren."\
	--defaults

## Clean up artifacts from default
npm uninstall hubot-heroku-keepalive
rm -rf hubot-scripts.json scripts

## Install adapters and custom scripts
npm install \
  hubot-discord \
  hubot-slack \
  git+https://github.com/jmhale/hubot-doggerisms.git \
  git+https://github.com/jmhale/hubot-doggy-daycare.git

echo "Build completed. Remember to add any custom scripts to external-scripts.json!"