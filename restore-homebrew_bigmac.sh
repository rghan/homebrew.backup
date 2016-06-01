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
/usr/local/bin/brew tap homebrew/boneyard
/usr/local/bin/brew tap homebrew/core
/usr/local/bin/brew tap homebrew/science
/usr/local/bin/brew tap homebrew/versions
install_package argtable ''
install_package bamtools ''
install_package bcftools ''
install_package bedtools ''
install_package bioawk ''
install_package boost ''
install_package boost-build ''
install_package bowtie ''
install_package bowtie2 ''
install_package bwa ''
install_package cairo ''
install_package cloog018 ''
install_package clustal-omega ''
install_package cmake ''
install_package curl ''
install_package cytoscape ''
install_package datamash ''
install_package dwgsim ''
install_package eigen ''
install_package express ''
install_package fontconfig ''
install_package freetype ''
install_package freexl ''
install_package gcc ''
install_package gcc49 ''
install_package gdal ''
install_package geos ''
install_package gettext ''
install_package giflib ''
install_package git ''
install_package glib ''
install_package gmp ''
install_package gmp4 ''
install_package gobject-introspection ''
install_package gperftools ''
install_package harfbuzz ''
install_package htop-osx ''
install_package htslib ''
install_package icu4c ''
install_package igv ''
install_package igvtools ''
install_package isl ''
install_package isl011 ''
install_package jellyfish ''
install_package jpeg ''
install_package json-c ''
install_package libevent ''
install_package libffi ''
install_package libgeotiff ''
install_package libiodbc ''
install_package liblwgeom ''
install_package libmpc ''
install_package libmpc08 ''
install_package libpng ''
install_package libspatialite ''
install_package libsvg ''
install_package libtiff ''
install_package libxml2 ''
install_package lzlib ''
install_package meme ''
install_package mpfr ''
install_package mpfr2 ''
install_package mysql ''
install_package oases ''
install_package open-mpi ''
install_package openblas ''
install_package openssl ''
install_package pandoc ''
install_package pango ''
install_package pcre ''
install_package pixman ''
install_package pkg-config ''
install_package proj ''
install_package protobuf ''
install_package r ''
install_package readline ''
install_package samtools ''
install_package sqlite ''
install_package tbb ''
install_package texinfo ''
install_package tophat ''
install_package trimmomatic ''
install_package trinity ''
install_package ucsc-genome-browser ''
install_package valgrind ''
install_package vcftools ''
install_package velvet ''
install_package wget ''
install_package xz ''
install_package z ''
install_package zsh-syntax-highlighting ''
install_cask_package appcleaner
install_cask_package betterzipql
install_cask_package flux
install_cask_package google-drive
install_cask_package inkscape
install_cask_package iterm2
install_cask_package java
install_cask_package qlcolorcode
install_cask_package qlimagesize
install_cask_package qlmarkdown
install_cask_package qlprettypatch
install_cask_package qlstephen
install_cask_package quicklook-csv
install_cask_package quicklook-json
install_cask_package rstudio
install_cask_package slack
install_cask_package smartgit
install_cask_package suspicious-package
install_cask_package virtualbox
install_cask_package webpquicklook
install_cask_package xquartz
[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
