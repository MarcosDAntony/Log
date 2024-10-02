---
layout: docs
title: Browsers and devices
description: Learn about the browsers and devices, from modern to old, that are supported by Bootstrap, including known quirks and bugs for each.
group: getting-started
toc: true
---

## Supported browsers

Bootstrap supports the **latest, stable releases** of all major browsers and platforms.

Alternative browsers which use the latest version of WebKit, Blink, or Gecko, whether directly or via the platform's web view API, are not explicitly supported. However, Bootstrap should (in most cases) display and function correctly in these browsers as well. More specific support information is provided below.

You can find our supported range of browsers and their versions [in our `.browserslistrc file`]({{< param repo >}}/blob/v{{< param current_version >}}/.browserslistrc):

```text
{{< rf.inline >}}
{{- readFile ".browserslistrc" | chomp | htmlEscape -}}
{{< /rf.inline >}}
```

We use [Autoprefixer](https://github.com/postcss/autoprefixer) to handle intended browser support via CSS prefixes, which uses [Browserslist](https://github.com/browserslist/browserslist) to manage these browser versions. Consult their documentation for how to integrate these tools into your projects.

### Mobile devices

Generally speaking, Bootstrap supports the latest versions of each major platform's default browsers. Note that proxy browsers (such as Opera Mini, Opera Mobile's Turbo mode, UC Browser Mini, Amazon Silk) are not supported.

{{< bs-table "table" >}}
| | Chrome | Firefox | Safari | Android Browser &amp; WebView |
| --- | --- | --- | --- | --- |
| **Android** | Supported | Supported | <span class="text-body-secondary">&mdash;</span> | v6.0+ |
| **iOS** | Supported | Supported | Supported | <span class="text-body-secondary">&mdash;</span> |
{{< /bs-table >}}

### Desktop browsers

Similarly, the latest versions of most desktop browsers are supported.

{{< bs-table "table" >}}
| | Chrome | Firefox | Microsoft Edge | Opera | Safari |
| --- | --- | --- | --- | --- | --- |
| **Mac** | Supported | Supported | Supported | Supported | Supported |
| **Windows** | Supported | Supported | Supported | Supported | <span class="text-body-secondary">&mdash;</span> |
{{< /bs-table >}}

For Firefox, in addition to the latest normal stable release, we also support the latest [Extended Support Release (ESR)](https://www.mozilla.org/en-US/firefox/enterprise/) version of Firefox.

Unofficially, Bootstrap should look and behave well enough in Chromium and Chrome for Linux, and Firefox for Linux, though they are not officially supported.

## Internet Explorer

Internet Explorer is not supported. **If you require Internet Explorer support, please use Bootstrap v4.**

## Modals and dropdowns on mobile

### Overflow and scrolling

Support for `overflow: hidden;` on the `<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="../index.html" target="_self"><img src="../Recursos/Frameworks/Log/img/log-logo.png" class="logo" width="127px"> </h1></a>
     
      <button style="color: gold;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation ">
        <img src="../../Log/Recursos/Frameworks/Log/img/menu-responsivo.png" width="30">
      </button>
     
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <div class="navbar-nav">
          
          <a class="nav-link active" style="color: whitesmoke;"  href="https://www.notion.so/agendas-53250b54e3a24c53888e20edddb2a073" target="_blank"> <img src="./Agendas/agendas-menu.png" width="25" height="25"> Agendas</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Bibliotecas/bibliotecas.html"><img src="./Bibliotecas/bibliotecas-menu.png" width="25" height="25"> Bibliotecas</a>

          <a class="nav-link active" style="color:  whitesmoke;" href="../Eventos/eventos-menu.png" target="_blank"><img src="./Eventos/eveventos-menu.png" width="25" height="25"> Eventos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="./Projetos/projetos.html" target="_blank"><img src="./Projetos/projetos-menu.png" width="25" height="25"> Projetos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Trabalhos/trabalhos.html"><img src="./Trabalhos/ttrabalhos-menu.png" width="25" height="25"> Trabalhos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Recursos/recursos.html"><img src="./Recursos/recursos-menu.png" width="25" height="25"> Recursos</a>
        </div>
      </div>
    </div>
  </nav>
  
  <hr>` element is quite limited in iOS and Android. To that end, when you scroll past the top or bottom of a modal in either of those devices' browsers, the `<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="../index.html" target="_self"><img src="../Recursos/Frameworks/Log/img/log-logo.png" class="logo" width="127px"> </h1></a>
     
      <button style="color: gold;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation ">
        <img src="../../Log/Recursos/Frameworks/Log/img/menu-responsivo.png" width="30">
      </button>
     
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <div class="navbar-nav">
          
          <a class="nav-link active" style="color: whitesmoke;"  href="https://www.notion.so/agendas-53250b54e3a24c53888e20edddb2a073" target="_blank"> <img src="./Agendas/agendas-menu.png" width="25" height="25"> Agendas</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Bibliotecas/bibliotecas.html"><img src="./Bibliotecas/bibliotecas-menu.png" width="25" height="25"> Bibliotecas</a>

          <a class="nav-link active" style="color:  whitesmoke;" href="../Eventos/eventos-menu.png" target="_blank"><img src="./Eventos/eveventos-menu.png" width="25" height="25"> Eventos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="./Projetos/projetos.html" target="_blank"><img src="./Projetos/projetos-menu.png" width="25" height="25"> Projetos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Trabalhos/trabalhos.html"><img src="./Trabalhos/ttrabalhos-menu.png" width="25" height="25"> Trabalhos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Recursos/recursos.html"><img src="./Recursos/recursos-menu.png" width="25" height="25"> Recursos</a>
        </div>
      </div>
    </div>
  </nav>
  
  <hr>` content will begin to scroll. See [Chrome bug #175502](https://bugs.chromium.org/p/chromium/issues/detail?id=175502) (fixed in Chrome v40) and [WebKit bug #153852](https://bugs.webkit.org/show_bug.cgi?id=153852).

### iOS text fields and scrolling

As of iOS 9.2, while a modal is open, if the initial touch of a scroll gesture is within the boundary of a textual `<input>` or a `<textarea>`, the `<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="../index.html" target="_self"><img src="../Recursos/Frameworks/Log/img/log-logo.png" class="logo" width="127px"> </h1></a>
     
      <button style="color: gold;" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation ">
        <img src="../../Log/Recursos/Frameworks/Log/img/menu-responsivo.png" width="30">
      </button>
     
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <div class="navbar-nav">
          
          <a class="nav-link active" style="color: whitesmoke;"  href="https://www.notion.so/agendas-53250b54e3a24c53888e20edddb2a073" target="_blank"> <img src="./Agendas/agendas-menu.png" width="25" height="25"> Agendas</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Bibliotecas/bibliotecas.html"><img src="./Bibliotecas/bibliotecas-menu.png" width="25" height="25"> Bibliotecas</a>

          <a class="nav-link active" style="color:  whitesmoke;" href="../Eventos/eventos-menu.png" target="_blank"><img src="./Eventos/eveventos-menu.png" width="25" height="25"> Eventos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="./Projetos/projetos.html" target="_blank"><img src="./Projetos/projetos-menu.png" width="25" height="25"> Projetos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Trabalhos/trabalhos.html"><img src="./Trabalhos/ttrabalhos-menu.png" width="25" height="25"> Trabalhos</a>
          
          <a class="nav-link active" style="color:  whitesmoke;" href="../Recursos/recursos.html"><img src="./Recursos/recursos-menu.png" width="25" height="25"> Recursos</a>
        </div>
      </div>
    </div>
  </nav>
  
  <hr>` content underneath the modal will be scrolled instead of the modal itself. See [WebKit bug #153856](https://bugs.webkit.org/show_bug.cgi?id=153856).

### Navbar Dropdowns

The `.dropdown-backdrop` element isn't used on iOS in the nav because of the complexity of z-indexing. Thus, to close dropdowns in navbars, you must directly click the dropdown element (or [any other element which will fire a click event in iOS](https://developer.mozilla.org/en-US/docs/Web/API/Element/click_event#Safari_Mobile)).

## Browser zooming

Page zooming inevitably presents rendering artifacts in some components, both in Bootstrap and the rest of the web. Depending on the issue, we may be able to fix it (search first and then open an issue if need be). However, we tend to ignore these as they often have no direct solution other than hacky workarounds.

## Validators

In order to provide the best possible experience to old and buggy browsers, Bootstrap uses [CSS browser hacks](http://browserhacks.com/) in several places to target special CSS to certain browser versions in order to work around bugs in the browsers themselves. These hacks understandably cause CSS validators to complain that they are invalid. In a couple places, we also use bleeding-edge CSS features that aren't yet fully standardized, but these are used purely for progressive enhancement.

These validation warnings don't matter in practice since the non-hacky portion of our CSS does fully validate and the hacky portions don't interfere with the proper functioning of the non-hacky portion, hence why we deliberately ignore these particular warnings.

Our HTML docs likewise have some trivial and inconsequential HTML validation warnings due to our inclusion of a workaround for [a certain Firefox bug](https://bugzilla.mozilla.org/show_bug.cgi?id=654072).
