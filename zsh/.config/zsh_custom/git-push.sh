gp() {
	git push "$@" || git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"
}
