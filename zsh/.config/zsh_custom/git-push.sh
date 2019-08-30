gp() {
	git push "$@"
	local rc=$?
	if [[ $rc != 0 && $rc != 100 ]]; then
		git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)" "$@"
	fi
}
