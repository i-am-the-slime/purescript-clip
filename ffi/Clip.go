package clipboard

import (
	"github.com/atotto/clipboard"
	. "github.com/purescript-native/go-runtime"
)

func init() {
	exports := Foreign("Clip")

	// Get clipboard contents
	exports["getClipboard"] = func() Any {
		text, err := clipboard.ReadAll()
		if err != nil {
			return ""
		}
		return text
	}

	// Set clipboard contents  
	exports["setClipboardImpl"] = func(s Any) Any {
		clipboard.WriteAll(s.(string))
		return nil
	}
}