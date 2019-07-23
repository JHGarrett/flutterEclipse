# AWS

# Modifiable Variabls

# Variables

serve:

# TODO - tests only working for dart tests - not for widget tests
# 	Failed to load "test/routes/widget_test.dart":
#  	Unable to spawn isolate: test/routes/widget_test.dart:7:8: Error: Not found: 'dart:html'
	#  import 'dart:html';
unit-test:
	#flutter test
	#export PATH=$(FLUTTER_SDK_BIN):$$PATH; flutter pub run test test/routes/widget_test.dart
	flutter pub run test

build-awscli:

run-awscli:

destroy-bucket:

create-bucket:

sync-bucket: build

clean:

build: clean	

deploy: build create-bucket sync-bucket

redeploy: build sync-bucket