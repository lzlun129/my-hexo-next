{% extends '_layout.swig' %}
{% import '_macro/post.swig' as render %}


{% block title %} {{ page.title }} // {{ config.title }} {% endblock %}


{% block page_class %}page-post-detail{% endblock %}


{% block content %}
  {{ render.post(page) }}
  {% if page.comments %}
    <div class="comments" id="comments">
      {% if (config.duoshuo and config.duoshuo.shortname) or config.duoshuo_shortname %}
        <!--多说分享start-->
        <div class="ds-share" data-thread-key="{{ page.path }}" data-title="{{ page.title }}"  data-content="来自他的小人国" data-url="{{ page.permalink }}">
        <div class="ds-share-inline">
        <ul  class="ds-share-icons-16">
        <li data-toggle="ds-share-icons-more"><a class="ds-more" href="javascript:void(0);">分享到：</a></li>
        <li><a class="ds-weibo" href="javascript:void(0);" data-service="weibo">微博</a></li>
        <li><a class="ds-qzone" href="javascript:void(0);" data-service="qzone">QQ空间</a></li>
        <li><a class="ds-qqt" href="javascript:void(0);" data-service="qqt">腾讯微博</a></li>
        <li><a class="ds-wechat" href="javascript:void(0);" data-service="wechat">微信</a></li>
      </ul>
      <div class="ds-share-icons-more">
      </div>
      </div>
      </div> 
      <!--多说分享end-->
      <!--多说评论start-->
        <div class="ds-thread" data-thread-key="{{ page.path }}"
             data-title="{{ page.title }}" data-url="{{ page.permalink }}">
        </div>
      <!--多说评论end-->


      {% elseif config.disqus_shortname %}
        <div id="disqus_thread">
          <noscript>Please enable JavaScript to view the <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        </div>
      {% endif %}
    </div>
  {% endif %}
{% endblock %}


{% block script_extra %}
  {% include '_scripts/pages/post-details.swig' %}
{% endblock %}
