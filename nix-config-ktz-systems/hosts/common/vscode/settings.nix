{ ... }:

{
  programs.vscode.userSettings = {
    "window.nativeTabs": true;
    "files.autoSave": "afterDelay";
    "files.autoSaveDelay": 1000;
    "editor.fontSize": 14;
    "editor.lineHeight": 1.8;
    "javascript.suggest.autoImports": true;
    "javascript.updateImportsOnFileMove.enabled": "always";
    "editor.rulers": [
        80
        120
    ];
    "extensions.ignoreRecommendations": true;
    "typescript.tsserver.log": "off";
    "files.associations": {
        ".env.*": "dotenv";
        ".prettierrc": "json";
        "*.css": "css";
    };
    "tailwindCSS.experimental.classRegex": [
        [
            "tv\\(([^)]*)\\)";
            "[\"'`]([^\"'`]*).*?[\"'`]"
        ];
        [
            "cva\\(([^)]*)\\)";
            "[\"'`]([^\"'`]*).*?[\"'`]"
        ];
        [
            "cx\\(([^)]*)\\)";
            "(?:'|\"|`)([^']*)(?:'|\"|`)"
        ];
        [
            "cn\\(([^)]*)\\)";
            "(?:'|\"|`)([^']*)(?:'|\"|`)"
        ];
        [
            "clsx\\(([^)]*)\\)";
            "(?:'|\"|`)([^']*)(?:'|\"|`)"
        ];
        [
            "twMerge\\(([^)]*)\\)";
            "(?:'|\"|`)([^']*)(?:'|\"|`)"
        ];
    ];
    "extensions.closeExtensionDetailsOnViewChange": true;
    "editor.parameterHints.enabled": false;
    "editor.renderLineHighlight": "gutter";
    "cSpell.language": "en;pt";
    "typescript.updateImportsOnFileMove.enabled": "always";
    "editor.suggestSelection": "first";
    "explorer.confirmDelete": false;
    "gitlens.codeLens.recentChange.enabled": false;
    "terminal.integrated.showExitAlert": false;
    "[javascriptreact]": {
        "editor.formatOnSave": true;
    };
    "[typescript]": {
        "editor.formatOnSave": true;
        "editor.defaultFormatter": "biomejs.biome";
    };
    "[typescriptreact]": {
        "editor.formatOnSave": true;
        "editor.defaultFormatter": "biomejs.biome";
    };
    "[prisma]": {
        "editor.formatOnSave": true;
    };
    "typescript.suggest.autoImports": true;
    "terminal.integrated.env.osx": {
        "FIG_NEW_SESSION": "1";
    };
    "workbench.editor.labelFormat": "short";
    "editor.fontLigatures": true;
    "emmet.includeLanguages": {
        "javascript": "javascriptreact";
    };
    "emmet.syntaxProfiles": {
        "javascript": "jsx";
    };
    "editor.acceptSuggestionOnCommitCharacter": false;
    "explorer.compactFolders": false;
    "git.enableSmartCommit": true;
    "editor.accessibilitySupport": "off";
    "explorer.confirmDragAndDrop": false;
    "terminal.integrated.fontSize": 12;
    "terminal.integrated.fontFamily": "JetBrainsMonoNL Nerd Font";
    "editor.codeActionsOnSave": {
        "source.fixAll.eslint": "always";
        "quickfix.biome": "explicit";
        "source.organizeImports.biome": "explicit";
    };
    "editor.semanticHighlighting.enabled": false;
    "breadcrumbs.enabled": false;
    "workbench.productIconTheme": "fluent-icons";
    "editor.fontFamily": "JetBrains Mono";
    "gitlens.codeLens.authors.enabled": false;
    "editor.tabSize": 2;
    "security.workspace.trust.untrustedFiles": "newWindow";
    "files.exclude": {
        "**/CVS": true;
        "**/.DS_Store": true;
        "**/.hg": true;
        "**/.svn": true;
        "**/.git": true;
        ".vscode": true;
    };
    "update.mode": "manual";
    "terminal.integrated.gpuAcceleration": "off";
    "window.commandCenter": true;
    "git.openRepositoryInParentFolders": "always";
    "symbols.hidesExplorerArrows": false;
    "[javascript]": {
        "editor.formatOnSave": true;
        "editor.defaultFormatter": "biomejs.biome";
    };
    "console-ninja.featureSet": "Community";
    "workbench.editor.empty.hint": "hidden";
    "update.showReleaseNotes": false;
    "security.promptForLocalFileProtocolHandling": false;
    "editor.minimap.enabled": false;
    "explorer.sortOrder": "foldersNestsFiles";
    "explorer.fileNesting.patterns": {
        "package.json": "package-lock.json; yarn.lock; pnpm-lock*; bun.lockb";
        "tailwind.config.*": "tailwind.config*; postcss.config*";
        ".eslintrc*": ".eslintrc*; .eslintignore";
        ".prettierrc*": "prettier.config*; .prettierignore";
        "prettier.config*": ".prettierrc*;.prettierignore";
        "vitest.config.*": "vitest.setup.*";
        "jest.config.*": "jest.setup.*";
        ".env.local": ".env*";
        ".env": ".env*";
        "tsconfig.json": "tsconfig.*.json";
    };
    "explorer.fileNesting.enabled": true;
    "workbench.statusBar.visible": false;
    "workbench.settings.editor": "json";
    "screencastMode.onlyKeyboardShortcuts": true;
    "screencastMode.fontSize": 32;
    "symbols.files.associations": {
        "*.module.ts": "nest";
        "*.guard.ts": "typescript";
        "*.spec.ts": "ts-test";
        "*.e2e-spec.ts": "ts-test";
        "vitest.config.e2e.ts": "vite";
        ".env.example": "gear";
    };
    "editor.wordWrap": "wordWrapColumn";
    "editor.wordWrapColumn": 80;
    "javascript.preferences.jsxAttributeCompletionStyle": "auto";
    "javascript.autoClosingTags": true;
    "editor.bracketPairColorization.enabled": true;
    "editor.autoClosingBrackets": "always";
    "editor.autoClosingQuotes": "always";
    "typescript.preferences.importModuleSpecifier": "non-relative";
    "typescript.preferences.importModuleSpecifierEnding": "minimal";
    "typescript.suggest.paths": true;
    "javascript.suggest.jsdoc.generateReturns": true;
    "typescript.suggest.jsdoc.generateReturns": true;
    "javascript.suggest.completeJSDocs": true;
    "typescript.suggest.completeJSDocs": true;
    "yaml.schemas": {
        "file:///Users/danielsousa/.vscode/extensions/atlassian.atlascode-3.0.10/resources/schemas/pipelines-schema.json": "bitbucket-pipelines.yml"
    };
    "versionlens.suggestions.showOnStartup": true;
    "extensions.autoUpdate": "onlyEnabledExtensions";
    "terminal.integrated.cursorStyle": "line";
    "cSpell.enabled": true;
    "javascript.experimental.updateImportsOnPaste": true;
    "typescript.experimental.updateImportsOnPaste": true;
    "editor.rename.enablePreview": true;
    "workbench.editor.closeOnFileDelete": true;
    "search.exclude": {
        "**/node_modules": true;
        "**/dist": true;
        "**/coverage": true
    };
    "javascript.preferences.renameMatchingJsxTags": true;
    "typescript.preferences.renameMatchingJsxTags": true;
    "[json]": {
        "editor.defaultFormatter": "biomejs.biome"
    };
    "editor.linkedEditing": true;
    "git.autofetch": true;
    "workbench.colorTheme": "Catppuccin Mocha";
    "workbench.iconTheme": "catppuccin-mocha";
    "sync.gist": "791cae575e0e68a015e6f079bf93cf87";
    "sync.autoUpload": true;
    "sync.quietSync": true;
    "sync.syncExtensions": true;
    "sync.autoDownload": true;
    # "terminal.integrated.defaultProfile.osx": "zsh";
    "typescript.preferences.useAliasesForRenames": false;
  };
}