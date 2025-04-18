{ ... }:

{
  programs.vscode = {
    userSettings =
      let
        vSpaceCodeLaunch = {
          "before" = [ "<space>" ];
          "commands" = [ "vspacecode.space" ];
        };
        vSpaceCodeMajorMode = {
          "before" = [ "," ];
          "commands" = [
            "vspacecode.space"
            {
              "command" = "whichkey.triggerKey";
              "args" = "m";
            }
          ];
        };
      in
      {
        "vim.normalModeKeyBindingsNonRecursive" = [ vSpaceCodeLaunch vSpaceCodeMajorMode ];
        "vim.visualModeKeyBindingsNonRecursive" = [
          vSpaceCodeLaunch
          vSpaceCodeMajorMode
          {
            before = [ "s" ];
            after = [ "S" ];
          }
        ];

        "vspacecode.bindingOverrides" = [
          {
            "keys" = "f.f";
            "name" = "Open file";
            "type" = "command";
            "command" = "workbench.action.quickOpen";
          }
          {
            "keys" = "b.b";
            "name" = "Switch buffers";
            "type" = "command";
            "command" = "workbench.action.showEditorsInActiveGroup";
          }
          {
            "keys" = "t";
            "name" = "Toggle..";
            "type" = "bindings";
            "bindings" = [
              {
                "key" = "t";
                "name" = "Toggle Terminal";
                "type" = "command";
                "command" = "workbench.action.terminal.toggleTerminal";
              }
              {
                "key" = "b";
                "name" = "Toggle Sidebar";
                "type" = "command";
                "command" = "workbench.action.toggleSidebarVisibility";
              }
            ];
          }
        ];
      };

    keybindings = [
      {
        key = "space";
        command = "vspacecode.space";
        when = "((activeEditorGroupEmpty && focusedView == '') || sideBarFocus) && !whichkeyActive && !inputFocus";
      }
      {
        key = "shift+cmd+j";
        command = "workbench.action.focusActiveEditorGroup";
        when = "terminalFocus";
      }
      {
        key = "shift+cmd+'";
        command = "workbench.action.terminal.toggleTerminal";
        when = "terminalFocus";
      }
    ];
  };
}


[
    {
      "key": "cmd+n",
      "command": "-workbench.action.files.newUntitledFile"
    },
    {
      "key": "cmd+n",
      "command": "explorer.newFile"
    },
    {
      "key": "cmd+w",
      "command": "-workbench.action.terminal.killEditor",
      "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated || terminalEditorFocus && terminalFocus && terminalProcessSupported"
    },
    {
      "key": "alt+k",
      "command": "workbench.action.terminal.killEditor"
    },
    {
      "key": "alt+k",
      "command": "workbench.action.terminal.kill"
    },
    {
      "key": "cmd+w",
      "command": "workbench.action.terminal.kill",
      "when": "terminalFocus"
    },
    {
      "key": "cmd+w",
      "command": "workbench.action.closeActiveEditor",
      "when": "!terminalFocus"
    },
    {
      "key": "ctrl+shift+h",
      "command": "workbench.action.showPreviousWindowTab",
      "when": "!terminalFocus"
    },
    {
      "key": "ctrl+shift+l",
      "command": "workbench.action.showNextWindowTab",
      "when": "!terminalFocus"
    },
    {
      "key": "ctrl+shift+t",
      "command": "workbench.action.newWindowTab"
    },
    {
      "key": "cmd+k",
      "command": "workbench.action.terminal.clear",
      "when": "terminalFocus"
    }
  ]