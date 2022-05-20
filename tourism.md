---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
title: Tourism
layout: home
---


{% for item in site.data.Tourism %}
<div>
   <h3>
    <a href="{{item.Website}}">{{ item.Name }}</a>
   </h3> 
   <ul>
   <li><b>Category</b>: {{ item.Category }}</li>
   <li><b>Address</b>: {{ item.Address }}</li>
   <li><b>Description</b>: {{ item.Description }}</li>
   </ul>
</div>    
{% endfor %}

