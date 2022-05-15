---
title: Food
layout: home
---

{% for item in site.data.Food %}
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


