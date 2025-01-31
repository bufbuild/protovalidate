# Releasing protovalidate

The protovalidate repository contains two Go modules, and a Bazel module with
Bzlmod and WORKSPACE support, which is pushed to the Bazel Central Repository.
Proper release process is necessary to ensure that a protovalidate release is
usable in all of these forms.

Most of the protovalidate release process is automated, but in the event that
automation can not be utilized, the manual steps are also included in the
collapsed sections below.

1.  **Run the [create release tag] workflow.**

    Go to the [create release tag] workflow page and select <q>Run workflow</q>,
    with the desired version tag (e.g. `v1.2.3`).

    <details>

    <summary>What this workflow does</summary>

    This will create two release tags for the latest `main` revision:

    - `v1.2.3`: For Bazel, BCR, Go main module, etc.
    - `tools/v1.2.3`: For the Go tools module

    These tags can also be created manually. Pushing the `v1.2.3` tag should
    trigger the remaining release automation. Do not forget to create both tags
    in the event of manually cutting a release.

    Note that this workflow creates tags directly on GitHub instead of pushing
    tags up, so it will not indirectly trigger the draft release automation in
    that way. Instead, a workflow call is used. So, the creat release draft
    workflow will appear nested under the create release tag workflow as a step.

    </details>

1.  **Find the draft release.**

    Upon either pushing a release tag or running the previous workflow, a
    release draft should be created. Check for it in the [releases page].

    If for some reason this doesn't happen, it is possible to directly trigger
    the workflow by going to the [create release draft] action and selecting
    <q>Run workflow</q>.

    <details>

    <summary>Manually creating a release draft</summary>

    To manually create a release draft, run `.github/workflows/release_prep.sh`
    with the version tag (e.g. `vX.Y.Z`) as an argument, while checked out to
    the release tag/commit:

    ```
    .github/workflows/release_prep.sh v1.2.3
    ```

    This will create two files:

    - `release_notes.md`: This should be prepended to the GitHub-generated
      release notes. It contains instructions on how to include the repo with
      Bazel.
    - `protovalidate-1.2.3.tar.gz`: This should be attached to the release. It
      includes a stable tarball of the release commit for Bazel.

    </details>

1.  **Publish the release.**

    Once the release draft is created, edit it as needed, prepending any
    important notes (e.g. breaking changes), and finally, publish it.

1.  **Check [Bazel Central Registry repository] for a pull request.**

    Shortly after publishing the release, the [Publish to BCR] app should've
    created a new pull request. There may be failures in CI that need to be
    addressed.

[create release tag]: https://github.com/bufbuild/protovalidate/actions/workflows/create-release-tag.yaml
[create release draft]: https://github.com/bufbuild/protovalidate/actions/workflows/create-release-draft.yaml
[releases page]: https://github.com/bufbuild/protovalidate/releases
[Bazel Central Registry repository]: https://github.com/bazelbuild/bazel-central-registry/pulls
[Publish to BCR]: https://github.com/apps/publish-to-bcr