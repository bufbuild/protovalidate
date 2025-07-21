# Releasing protovalidate

The protovalidate repository contains two Go modules, and a Bazel module with
Bzlmod and WORKSPACE support, which is pushed to the Bazel Central Repository.
Proper release process is necessary to ensure that a protovalidate release is
usable in all of these forms.

Most of the protovalidate release process is automated, but in the event that
automation can not be utilized, the manual steps are also included in the
collapsed sections below.

1.  **Run the [Release] workflow.**

    Go to the [Release] workflow page and select <q>Run workflow</q>,
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
    tags up, so it will not indirectly trigger automations that trigger on tags.
    The BCR release script is run as a workflow call. Creating the tags manually
    will not trigger this.

    </details>

1.  **Find the draft release.**

    Upon running the previous workflow, a release draft should be created.
    Check for it in the [releases page].

    If for some reason this doesn't happen, check the workflow log for more
    information.

    <details>

    <summary>Manually creating a release draft</summary>

    Note that manually-created releases will not pass attestation and can not
    be pushed to the BCR.

    To manually create a release draft, run `.github/workflows/release_prep.sh`
    with the version tag (e.g. `vX.Y.Z`) as an argument, while checked out to
    the release tag/commit:

    ```
    .github/workflows/release_prep.sh v1.2.3 >release_notes.md
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

[Release]: https://github.com/bufbuild/protovalidate/actions/workflows/release.yaml
[releases page]: https://github.com/bufbuild/protovalidate/releases
[Bazel Central Registry repository]: https://github.com/bazelbuild/bazel-central-registry/pulls
[Publish to BCR]: https://github.com/apps/publish-to-bcr
