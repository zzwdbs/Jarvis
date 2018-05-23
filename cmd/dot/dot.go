package dot

import (
	"os/user"

	c "github.com/armour/jarvis/cmd"
	"github.com/spf13/cobra"
)

var (
	username string
	mac      bool
	linux    bool
	windows  bool
)

var dotCmd = &cobra.Command{
	Use:   "dot",
	Short: "Manage global dot files.",
	Long:  "Manage global dot files.",
	Run: func(cmd *cobra.Command, args []string) {
		templatePath := "dotfiles"
		requireMap := map[string]interface{}{
			"mac":     mac,
			"linux":   linux,
			"windows": windows,
		}
		replaceMap := map[string]interface{}{
			"mac":      mac,
			"linux":    linux,
			"windows":  windows,
			"username": username,
		}
		usr, err := user.Current()
		if err != nil {
			c.ExitOnError(err)
		}
		c.GenerateFile(templatePath, usr.HomeDir, requireMap, replaceMap)
		if mac {
			// runCommand("bash", "mac.sh")
		}
		if linux {
			// TODO: linux command here
		}
		if windows {
			// TODO: windows command here
		}
	},
}

func init() {
	c.RootCmd.AddCommand(dotCmd)

	dotCmd.Flags().StringVarP(&username, "username", "u", "armour", "The name for current user.")
	dotCmd.Flags().BoolVar(&mac, "mac", false, "The flag to enable mac environment.")
	dotCmd.Flags().BoolVar(&linux, "linux", false, "The flag to enable linux environment.")
	dotCmd.Flags().BoolVar(&windows, "windows", false, "The flag to enable windows environment.")
}
