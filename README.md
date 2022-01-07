# DWM - DOTS

* **Window Manager** • [DWM](https://github.com/siduck/chadwm)🎨 Tiles Everywhere!
* **Shell** • [Zsh](https://www.zsh.org) 🐚 con [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework!
* **Terminal** • [Kitty](https://github.com/kovidgoyal/kitty) 💻 Una terminal que soporta imagenes!
* **Panel** • [dwm-bar](https://github.com/siduck/chadwm)🍧 Sencilla, sin lujos!
* **Compositor** • [Picom](https://github.com/yshui/picom) 🍩 rounded corners y mucho BLUR!
* **Notify Daemon** • [Dunst](https://github.com/dunst-project/dunst) 🍃 minimalista!
* **Launcher** • [Rofi](https://github.com/davatorium/rofi) 🚀 Realmente rápido y customizable!
* **File Manager** • [Ranger](https://github.com/ranger/ranger)🔖 customizado!
* **GUI Basic-IDE** • [NVIM](https://github.com/vlagh3/NvChad) 🗒️Un IDE muy hermoso!

## Este es mi actual desktop

<img src='.misc/2022.01.07-00.20.49.screenrec.gif'>

## 🌸 Setup

Esto va a ser un intento de un "paso a paso". Pero siempre recomiendo no copiar y pegar al pie de la letra. Sino "inspirarse".  
Como suelen decir en la comunidad de linux. Solamente [R.T.F.M](https://en.wikipedia.org/wiki/RTFM).

### Instalación (dependencias)

    Primero que nada un breve "disclaimer". Esta configuración es la que estoy utilizando actualmente. Está pensado para funcionar en Archlinux, y para dejar el escritorio tal cual lo tengo yo. Por lo tanto, si estás utilizando otra distribución vas a tener que instalar las dependencias en base a ello. Así que si no utilizas Archlinux, no deberías copiar y pegar.

#### Instalando Paru como AUR Helper 🆘

{% highlight bash %}  
\# For Aur Helper install Paru
echo "### Installing paru as AUR Helper"
mkdir $HOME/Downloads/_cloned-repos
cd $HOME/Downloads/_cloned-repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si  
{% endhighlight %}

#### Instalamos Oh-My-Zsh 🐚

{% highlight bash %}  
\# First install Oh-My-Zsh  
echo "### Installing oh-my-zsh"  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  
{% endhighlight %}

#### Instalando los paquetes requeridos 📦

{% highlight bash %}  
echo "### Installing Required Packages"
paru -S python ffmpeg pulseaudio pulseaudio-alsa alsa-utils dunst xclip scrot  \\
thunar thunar-archive-plugin thunar-volman ffmpegthumbnailer tumbler w3m       \\
viewnior mpv neofetch htop xsettingsd picom-jonaburg-git rofi rsync firefox    \\
ranger python-pip noto-fonts-emoji noto-fonts-cjk python-pillow-git xwallpaper \\
exa bat file-roller geany geany-plugins gvfs gvfs-mtp htop kitty wal-git       \\
lxappearance pavucontrol nerd-fonts-complete polybar  
{% endhighlight %}

#### Instalamos Oh-My-Zsh Plugins 🔌

{% highlight bash %}  
echo "### Installing Oh-My-Zsh Plugins"
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-\~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-\~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-\~/.oh-my-zsh/custom}/plugins/zsh-completions  
{% endhighlight %}

#### Instalamos Hypr WM 🪟

##### Primero vamos a instalar las dependencias.

{% highlight bash %}  
sudo pacman -S --needed cairo gdb ninja gcc cmake libxcb xcb-proto xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xcb-util-xrm gtkmm gtk4 gtkmm3  
{% endhighlight %}

##### Compilamos Hypr WM

{% highlight bash %}  
cd $HOME/Downloads/_cloned-repos
git clone https://github.com/vaxerski/Hypr
cd Hypr
make clear && make release  
{% endhighlight %}

##### Y copiamos los archivos necesarios.

{% highlight bash %}  
cd $HOME/Downloads/_cloned-repos/Hypr  
sudo cp build/Hypr /usr/bin/  
sudo cp example/hypr.desktop /usr/share/xsessions/  
{% endhighlight %}

#### Ahora procedemos a Clonar y copiar los Dotfiles

##### Clonamos y Copiamos

{% highlight bash %}  
git clone https://github.com/linuxmobile/dotfiles $HOME/dotfiles/  
cd $HOME/dotfiles/
rsync -avxHAXP --exclude '.git*' .* \~/  
{% endhighlight %}

##### Agregamos los iconos

{% highlight bash %}  
pushd \~/.icons/ && \\
tar -xJf Papirus-Custom.tar.xz && tar -xJf Papirus-Dark-Custom.tar.xz && \\
sudo ln -vs \~/.icons/Papirus-Custom /usr/share/icons/
sudo ln -vs \~/.icons/Papirus-Dark-Custom /usr/share/icons/
rm -rf *.tar.xz
popd  
{% endhighlight %}

##### Por último actualizamos las fuentes

{% highlight bash %}  
fc-cache -rv  
{% endhighlight %}

    Eso es todo lo necesario. Tal vez necesite ir actualizando este post, ya que siempre es necesario mantener actualizado todo. Quizá faltan cosas, porque me olvidé o por alguna razón. Así que agregaré todo lo necesario con el tiempo.

### Les dejo un video de mi anterior Desktop

<div class="video"> <iframe src="https://www.youtube.com/embed/tiGCbY3EXks" frameborder="0" allowfullscreen></iframe> </div>

### Creditos

_A la hermosa comunidad de_ [_r/unixporn_](https://www.reddit.com/r/unixporn)_._

**_©_** _A todos los artistas que crearon los iconis, ilustraciones, y wallpapers._

**_©_** _A cada uno que ha creado y mantiene los proyectos que he mencionado y utilizado anteriormente._
