<template>
  <div>
    <form action="//www.baidu.com/s" id="google-search">
      <input type="text" value={{@outletArgs.searchTerm}} />
      <input
        type="text"
        name="wd"
        value="{{@outletArgs.searchTerm}} site:{{@outletArgs.siteUrl}}"
      />
      <button class="btn btn-primary" type="submit">百度一下</button>
    </form>
  </div>
</template>
