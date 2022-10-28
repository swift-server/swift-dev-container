# Swift (Community)

## Summary

*Develop Swift based applications. Includes everything you need to get up and running.*

| Metadata | Value |  
|----------|-------|
| *Contributors* | [0xTim](https://github.com/0xTim), [adam-fowler](https://github.com/adam-fowler), [cloudnull](https://github.com/cloudnull) |
| *Categories* | Community, Languages |
| *Definition type* | Dockerfile |
| *Supported architecture(s)* | x86-64, arm64 |
| *Works in Codespaces* | Yes |
| *Container host OS support* | Linux, macOS, Windows |
| *Container OS* | Debian |
| *Languages, platforms* | Swift |

## Using this definition

While the definition itself works unmodified, you can select the version of Swift the container uses by updating the `VARIANT` arg in the included `devcontainer.json` (and rebuilding if you've already created the container).

```json
"args": { "VARIANT": "5.7" }
```

Given how frequently web applications use Node.js for front end code, this container also includes an optional install of Node.js. You can enable installation and change the version of Node.js installed or disable its installation by updating the `args` property in `.devcontainer/devcontainer.json`.

```jsonc
"args": {
    "VARIANT": "5.7",
    "NODE_VERSION": "14" // Set to "none" to skip Node.js installation
}
```

### Adding the definition to a project or codespace

1. If this is your first time using a development container, please see getting started information on [setting up](https://aka.ms/vscode-remote/containers/getting-started) Remote-Containers or [creating a codespace](https://aka.ms/ghcs-open-codespace) using GitHub Codespaces.

2. Start VS Code and open your project folder or connect to a codespace.

3. Press <kbd>F1</kbd> select and **Add Development Container Configuration Files...** command for **Remote-Containers** or **Codespaces**.

   > **Note:** If needed, you can drag-and-drop the `.devcontainer` folder from this sub-folder in a locally cloned copy of this repository into the VS Code file explorer instead of using the command.

4. Select this definition. You may also need to select **Show All Definitions...** for it to appear.

5. Finally, press <kbd>F1</kbd> and run **Remote-Containers: Reopen Folder in Container** or **Codespaces: Rebuild Container** to start using the definition.

## License

Copyright (c) Microsoft Corporation. All rights reserved.

Licensed under the MIT License. See [LICENSE](https://github.com/microsoft/vscode-dev-containers/blob/main/LICENSE).
