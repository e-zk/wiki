#!/bin/sh
# index.sh - (c) zakaria 2021 (wtfpl)
set -e

env="${1:-./.env}"
# shellcheck source=./.env.template
. "$env"

TMPDIR="$(mktemp -d)"

exclude_files="${exclude_files}"
meta_ext="${meta_ext:-.meta}"
site_root="${site_root}"
html_dir="${html_dir:-html}"
post_dir="${post_dir:-posts}"

log() {
	printf 'shite: [%s] %s\n' "$1" "$2" >&2
}
info() {
	log "$(printf '\033[32minfo\033[0m')" "$1"
}
warn() {
	log "$(printf '\033[33mwarn\033[0m')" "$1"
}
error() {
	log "$(printf '\033[31merror\033[0m')" "$1"
}
die() {
	error "$1"
	printf 'exiting...\n' >&2
	exit 1
}

gen_header() {
	printf '<header>\n'
	if [ -f "${site_root}/${html_dir}/header.html" ]; then
		cat "${site_root}/${html_dir}/header.html"
	else
		warn "header_content file 'header.html' does not exist."
	fi
	printf '</header>\n'
}
gen_index_head() {
	cat "${html_dir}/index_head.html"
}
gen_index_tail() {
	cat "${html_dir}/index_tail.html"
}

gen_index() {
	find "${site_root}/" -name '*.md' | while read -r post; do
		post_html="${post%.*}.html"
		post_meta="${post%.*}${meta_ext}"
		post_sdir="$(basename "$(dirname "$post_html")")"
		post_url="/${post_sdir}/$(basename "$post_html")"

		excluded=0
		for ex in $exclude_files; do
			if [ "$(basename "$post")" = "$ex" ]; then
				excluded=1
			fi
		done
	
		if [ "$excluded" -eq 1 ]; then
			warn "${post} excluded"
			continue
		fi
	
		# parse metadata if .meta file exists
		if [ -f "$post_meta" ]; then
			# read the 'key: value' .meta file
			while IFS=': ' read -r key val; do
				[ "${key##\#*}" ] || continue
				# export each key as a variable; '$post_<key>'
				export "post_${key}=${val}" 2>/dev/null || \
					warn "'${key}' is not a valid meta tag name"
			done < "$post_meta"
		else
			warn "no ${meta_ext} - skipping metadata parsing"
		fi

		echo "${post_title}|${post_url}" >> "${TMPDIR}/${post_sdir}.meta"
	
		unset post_title
		unset post_sdir
	done
	
	printf '<!DOCTYPE html>\n'
	printf '<html lang="en">\n'
	printf '<head>\n'
	printf "<title>wiki</title>\n"
	cat "${html_dir}/head.html"
	printf "<meta property=\"og:title\" content=\"wiki\">\n"
	printf '</head>\n'
	printf '<body>\n'
	gen_header
	printf '<main>\n'
	gen_index_head
	for meta in "${TMPDIR}"/*.meta; do
		[ -f "$meta" ] || continue
		meta_name="$(basename "${meta%.*}")"
		printf '<h2>%s/</h2>\n' "$meta_name"
		if [ -f "${meta_name}/desc" ]; then
			cat "${meta_name}/desc"
		fi
		printf '<ul>\n'
		while IFS='|' read -r post_title post_url; do
			printf '<li><a href="%s">%s</a></li>\n' "$post_url" "$post_title"
		done < "$meta"
		printf '</ul>\n'
	done
	gen_index_tail
	printf '</main>\n'
	printf '</body>\n'
	printf '</html>\n'
}

gen_index

# remove index tempfile
rm -rf "$TMPDIR"
