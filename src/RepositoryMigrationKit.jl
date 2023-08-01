module RepositoryMigrationKit

using LibGit2: GitRepo, head, GitHash

export get_head_sha

function get_head_sha(repo_path)
    repo = GitRepo(repo_path)
    head_commit = head(repo)
    return GitHash(head_commit)
end

end
