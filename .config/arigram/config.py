
PHONE = ""

import mailcap
import os
import platform
import runpy
from typing import Any, Dict, List, Optional, Tuple

_os_name = platform.system()
_linux = "Linux"

CONFIG_DIR: str = os.path.expanduser("~/.config/arigram/")
CONFIG_FILE: str = os.path.join(CONFIG_DIR, "config.py")
FILES_DIR: str = os.path.expanduser("~/.cache/arigram/")
DRAFTS_FILE: str = os.path.join(FILES_DIR, "drafts.json")
MAILCAP_FILE: "~/.mailcap"

LOG_LEVEL: str = "INFO"
LOG_PATH: str = os.path.expanduser("~/.local/share/arigram/")

MAX_DOWNLOAD_SIZE: str = "10MB"

NOTIFY_FUNCTION: Optional[Any] = None

VIEW_TEXT_CMD: str = "less"

# for more info see https://trac.ffmpeg.org/wiki/Capture/ALSA
VOICE_RECORD_CMD: str = (
    "ffmpeg -f alsa -i hw:0 -c:a libopus -b:a 32k {file_path}"
    if _os_name == _linux
    else "ffmpeg -f avfoundation -i ':0' -c:a libopus -b:a 32k {file_path}"
)

# You can customize chat and msg flags however you want.
# By default words will be used for readability, but you can make
# it as simple as one letter flags like in mutt or add emojies
CHAT_FLAGS = {
    "online": "●",
    "pinned": "P",
    "muted": "M",
    # chat is marked as unread
    "unread": "U",
    # last msg haven't been seen by recipient
    "unseen": "✓",
    "secret": "🔒",
    "seen": "✓✓",  # leave empty if you don't want to see it
}
MSG_FLAGS = {
    "selected": "*",
    "forwarded": "F",
    "new": "N",
    "unseen": "U",
    "edited": "E",
    "pending": "...",
    "failed": "💩",
    "seen": "✓✓",  # leave empty if you don't want to see it
}

URL_VIEW: Optional[str] = None

USERS_COLOURS: Tuple[int, ...] = tuple(range(2, 16))

KEEP_MEDIA: int = 3

FILE_PICKER_CMD: "ranger --choosefile={file_path}"

DOWNLOAD_DIR: str = os.path.expanduser("~/Downloads/")

# CUSTOM_KEYBINDS = {"KEY": {"func": SOME_FUNCTION, "handler": CONTEXT_HANDLER}}
# CUSTOM_KEYBINDS = {"z": {"func": send_hello, "handler": msg_handler, "repeat": False, "is_remap": False}}

EXTRA_FILE_CHOOSER_PATHS: List[str] = ["..", "/", "~"]

TRUNCATE_LIMIT: int = 15


