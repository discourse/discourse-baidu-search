import { apiInitializer } from "discourse/lib/api";
import { i18n } from "discourse-i18n";

export default apiInitializer((api) => {
  const baiduSearch = <template>
    <form action="//www.baidu.com/s" id="google-search" class="inline-form">
      <input
        type="text"
        name="q"
        aria-label={{i18n "search.search_google"}}
        value="{{@outletArgs.searchTerm}}"
      />
      <input
        type="text"
        name="wd"
        value="{{@outletArgs.searchTerm}} site:{{@outletArgs.siteUrl}}"
        type="hidden"
      />
      <button class="btn btn-primary" type="submit">百度一下</button>
    </form>
  </template>;

  api.renderInOutlet("google-search", baiduSearch);
});
