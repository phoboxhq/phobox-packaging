#!/bin/bash

./jpackager create-installer deb \
	--icon input/logo.png \
	--output dist \
	--input input \
	--main-jar phobox.jar \
	--name Phobox \
	--add-modules java.base,java.datatransfer,java.desktop,java.scripting,java.xml,jdk.jsobject,jdk.unsupported,jdk.unsupported.desktop,jdk.xml.dom,javafx.controls,javafx.fxml,java.naming,java.sql,jdk.charsets,java.management,jdk.security.jgss,java.instrument
