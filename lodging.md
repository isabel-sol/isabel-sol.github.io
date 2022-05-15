---
title: Lodging
layout: home
---

## Hotels

### [Quinta Real](https://www.caminoreal.com/en/quintareal/quinta-real-oaxaca) 
We have a special rate for rooms associated with the baptism. Reach out for details on booking. 

{% for item in site.data.Lodging %}
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

