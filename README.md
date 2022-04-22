# DWM - DOTS

<h2 align="center"> ━━━━━━  ❖  ━━━━━━ </h2>

<!-- BADGES -->
<div align="center">
    <p></p>
    <a href="https://github.com/linuxmobile/dwm-dots/stargazers">
        <img src="https://img.shields.io/github/stars/linuxmobile/dwm-dots?colorA=1e1e28&colorB=%23101415&style=for-the-badge">
    </a>
    <a href="https://github.com/janleigh/dotfiles/network/members/">
        <img src="https://img.shields.io/github/forks/linuxmobile/dwm-dots?colorA=1e1e28&colorB=%23101415&style=for-the-badge">
    </a>
    <img src="https://img.shields.io/github/repo-size/linuxmobile/dwm-dots?colorA=1e1e28&colorB=%23101415&style=for-the-badge">
    <img src="https://badges.pufler.dev/visits/linuxmobile/dwm-dots?style=for-the-badge&colorA=1e1e28&colorB=white&labelColor=101415">
</div>

<p/>



---

* **Window Manager** • [DWM ](https://github.com/siduck/chadwm)🎨 Tiles Everywhere!
* **Shell** • [Zsh ](https://www.zsh.org) 🐚 con [starship](https://github.com/starship/starship) Cross Shell Platform!
* **Terminal** • [ST ](https://github.com/siduck/st) 💻 Una terminal muy poderosa y con soporte a imagenes!
* **Panel** • [dwm-bar ](https://github.com/siduck/chadwm)🍧 Sencilla, sin lujos!
* **Compositor** • [Picom ](https://github.com/Arian8j2/picom-jonaburg-fix) 🍩 rounded corners y mucho BLUR!
* **Notify Daemon** • [Dunst ](https://github.com/dunst-project/dunst) 🍃 minimalista!
* **Launcher** • [Rofi ](https://github.com/davatorium/rofi) 🚀 Realmente rápido y customizable!
* **File Manager** • [Ranger ](https://github.com/ranger/ranger)🔖 customizado!
* **GUI Basic-IDE** • [NVIM ](https://github.com/vlagh3/NvChad) 🗒️Un IDE muy hermoso!

## Este es mi actual desktop

<img src='.misc/vid.gif'>

## 🌸 Setup

Esto va a ser un intento de un "paso a paso". Pero siempre recomiendo no copiar y pegar al pie de la letra. Sino "inspirarse".  
Como suelen decir en la comunidad de linux. Solamente [R.T.F.M](https://en.wikipedia.org/wiki/RTFM).

### Instalación (Mucho CUIDADO CON ESTO)
<details>
<summary><b>Automática</b></summary>

```sh
cd ~/Downloads/
wget https://github.com/linuxmobile/runarch/blob/master/dwm/install.sh 
./install.sh
```

</details>


<details>

<summary><b>Manual</b></summary>

### Instalación (dependencias y paquetes)

    Primero que nada un breve "disclaimer". Esta configuración es la que estoy utilizando actualmente. Está pensado para funcionar en Archlinux, y para dejar el escritorio tal cual lo tengo yo. Por lo tanto, si estás utilizando otra distribución vas a tener que instalar las dependencias en base a ello. Así que si no utilizas Archlinux, no te recomiendo copiar y pegar.

#### Instalando Paru como AUR Helper 🆘

```sh
# For Aur Helper install Paru
echo "### Installing paru as AUR Helper"
mkdir $HOME/Downloads/_cloned-repos
cd $HOME/Downloads/_cloned-repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si  
```

#### Instalando los paquetes requeridos 📦

```sh
echo "### Installing Required Packages"
paru -S dunst ffmpeg ffmpegthumnailer tumbler neovim viewnior mpv rofi rsync scrot  \
picom-jonaburg-fix pavucontrol ranger noto-fonts xwallpaper imlib2 fzf exa bat      \
gvfs file-roller xclip ueberzug pacman-contrib cava libxft-bgra rofi-emoji starship 
```

**Como adicional se puede instalar**
```sh
paru -S pipewire pipewire-alsa pipewire-pulse # Remplazando pulseaudio \
thunar thunar-volman thunar-archive-plugin # Si no te gusta ranger     
```

#### Instalamos Oh-My-Zsh Plugins 🔌

```sh 
echo "### Installing Oh-My-Zsh Plugins"
git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-completions  
```

#### Ahora procedemos a Clonar y copiar los Dotfiles

_Algunas de las configuraciones que pueden ubicar en mis dotfiles_
<p align="center">
  <a>
    <img width="300px" style="padding: 0 10px;" src=".misc/youtube.png"/>
  </a>
  <a>
    <img width="300px" style="padding: 0 10px;" src=".misc/playlist.png"/>
  </a>
  <a>
    <img width="300px" style="padding: 0 10px;" src=".misc/rofi.png"/>
  </a>
  <a>
    <img width="300px" style="padding: 0 10px;" src=".misc/thunar.png"/>
  </a>
  <a>
  <img width="300px" style="padding: 0 10px;" src=".misc/monitor.png"/>
  </a>
  <a>
  <img width="300px" style="padding: 0 10px;" src=".misc/neofetch.png"/>
  </a>
  <a>
  <img width="300px" style="padding: 0 10px;" src=".misc/nvim.png"/>
  </a>
</p>


##### Clonamos y Copiamos

```sh 
git clone https://github.com/linuxmobile/dwm-dots $HOME/dwm-dots/  
cd $HOME/dwm-dots/
rsync -avxHAXP --exclude '.git*' .* ~/  
```

##### Agregamos las fuentes que yo utilizo 
```sh
mkdir -p $HOME/Downloads/nerdfonts/  # Creamos una carpeta para las fonts
cd $HOME/Downloads/                  # Vamos al directorio creado

# Clonamos las fuentes

wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/CascadiaCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/JetBrainsMono.zip

unzip '*.zip' -d $HOME/Downloads/nerdfonts/    # Descomprimimos
rm -rf *.zip                                   # Borramos los .zip

sudo cp -R $HOME/Downloads/nerdfonts/ /usr/share/fonts/   # Y copiamos las fuentes al directorio del sistema
```

##### Por último regeneramos el cache de las fuentes
```sh 
fc-cache -rv  
```

    Eso es todo lo necesario. Tal vez necesite ir actualizando este post, ya que siempre es necesario mantener actualizado todo. Quizá faltan cosas, porque me olvidé o por alguna razón. Así que agregaré todo lo necesario con el tiempo.


### Instalamos DWM 🪟

```sh
cd $HOME/dwm-dots/lnxdwm/
sudo make install
```

### ST terminal 🔥
```sh
cd $HOME/st/
sudo make install
```


### Creditos

_A la hermosa comunidad de [r/unixporn](https://www.reddit.com/r/unixporn)._

**©** _A todos los artistas que crearon los iconos, ilustraciones, y wallpapers._

**©** _A cada uno que ha creado y mantiene los proyectos que he mencionado y utilizado anteriormente._

---


© [Owl4ce](https://github.com/owl4ce)
© [Ilham25](https://github.com/ilham25)
© [Siduck](https://github.com/siduck)
© [NvChad](https://github.com/NvChad) 
