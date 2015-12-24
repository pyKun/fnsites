<form action="/osgov/" method="post">
    {% csrf_token %}
    {{ form }}
<input type="submit" value="Submit" />
</form>
{% if ret1 %}
<table>
  <caption> Name contains XXX
  <thead>
  <tr>
   <th> Name
   <th> Nick
   <th> Email
   <th> Count
   <th> Resposibility
    {% for user in ret1 %}
  <tbody>
   <td> {{ user.fullname }}
   <td> {{ user.username }}
   <td> {{ user.email }}
   <td> {{ user.count }}
   <td> {{ user.resp }}
    {% endfor %}
</table>
{% endif %}
{% if ret2 %}
<table>
  <caption> Emails contains XXX
  <thead>
  <tr>
   <th> Name
   <th> Nick
   <th> Email
   <th> Count
   <th> Resposibility
    {% for user in ret2 %}
  <tbody>
   <td> {{ user.fullname }}
   <td> {{ user.username }}
   <td> {{ user.email }}
   <td> {{ user.count }}
   <td> {{ user.resp }}
    {% endfor %}
</table>
{% endif %}
