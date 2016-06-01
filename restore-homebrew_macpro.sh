#!/bin/bash

trap ctrl_c INT
function ctrl_c() {
echo "** Trapped CTRL-C"
exit 1
}

brew_command=/usr/local/bin/brew
brew_cask_command="$brew_command cask"
failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
$brew_command install $1 $2
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
function install_cask_package() {
echo EXECUTING: brew cask install $1
$brew_cask_command install $1
[ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}
/usr/local/bin/brew tap caskroom/cask
/usr/local/bin/brew tap caskroom/fonts
/usr/local/bin/brew tap caskroom/versions
/usr/local/bin/brew tap homebrew/core
/usr/local/bin/brew tap homebrew/dupes
/usr/local/bin/brew tap homebrew/science
/usr/local/bin/brew tap staticfloat/julia
install_package ack ''
install_package argtable ''
install_package atk ''
install_package bash ''
install_package blat ''
install_package boost ''
install_package cairo ''
install_package clustal-omega ''
install_package coreutils ''
install_package curl ''
install_package ecj ''
install_package expat ''
install_package findutils ''
install_package fontconfig ''
install_package freetype ''
install_package freexl ''
install_package gcc ''
install_package gdal ''
install_package gdbm ''
install_package gdk-pixbuf ''
install_package geos ''
install_package gettext ''
install_package giflib ''
install_package git ''
install_package git-lfs ''
install_package glib ''
install_package gmp ''
install_package gobject-introspection ''
install_package gperf ''
install_package graphicsmagick ''
install_package grep ''
install_package gtk+ ''
install_package harfbuzz ''
install_package hdf5 ''
install_package hicolor-icon-theme ''
install_package icu4c ''
install_package isl ''
install_package jpeg ''
install_package json-c ''
install_package libffi ''
install_package libgeotiff ''
install_package liblwgeom ''
install_package libmpc ''
install_package libpng ''
install_package libspatialite ''
install_package libsvg ''
install_package libtiff ''
install_package libtool ''
install_package libxml2 ''
install_package lzlib ''
install_package mackup ''
install_package mpfr ''
install_package multimarkdown ''
install_package mysql ''
install_package ncurses ''
install_package openblas ''
install_package openssl ''
install_package pandoc ''
install_package pango ''
install_package pcre ''
install_package pixman ''
install_package pkg-config ''
install_package proj ''
install_package python ''
install_package r ''
install_package readline ''
install_package rename ''
install_package sqlite ''
install_package szip ''
install_package texinfo ''
install_package trash ''
install_package ucsc-genome-browser ''
install_package valgrind ''
install_package wget ''
install_package xz ''
install_package zsh-syntax-highlighting ''
install_cask_package alfred
install_cask_package appcleaner
install_cask_package betterzipql
install_cask_package cheatsheet
install_cask_package flux
install_cask_package hazel
install_cask_package inkscape
install_cask_package iterm2
install_cask_package java
install_cask_package mactex
install_cask_package malwarebytes-anti-malware
install_cask_package qlcolorcode
install_cask_package qlimagesize
install_cask_package qlmarkdown
install_cask_package qlprettypatch
install_cask_package qlstephen
install_cask_package quicklook-csv
install_cask_package quicklook-json
install_cask_package r
install_cask_package recordit
install_cask_package rstudio
install_cask_package screenflick
install_cask_package shiori
install_cask_package slack
install_cask_package smcfancontrol
install_cask_package soundnode
install_cask_package suspicious-package
install_cask_package valentina-studio
install_cask_package virtualbox
install_cask_package vlc
install_cask_package webpquicklook
install_cask_package xquartz
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
