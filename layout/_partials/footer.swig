<div class="copyright">
  {% set current = date(Date.now(), "YYYY") %}
  &copy; &nbsp; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  {{ current }}
  <span class="with-love">
    <i class="icon-heart"></i>
  </span>
  <span class="author">{{ config.author }}</span>
</div>

<div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" href="http://hexo.io">Hexo</a>') }}
</div>



<div class="theme-info">
  {{ __('footer.theme') }} -
  <a class="theme-link" href="https://github.com/lzlun129/my-hexo-next">
    Customized.NexT{% if theme.scheme %}.{{ theme.scheme }}{% endif %}
  </a>
</div>
{% if config.icpno %}
{% set icpno = config.icpno %}
<div>
  <span>ICP证号: <a href="http://www.miitbeian.gov.cn/">{{ icpno }}</a></span>
</div>
{% endif %}

{% block footer %}{% endblock %}
