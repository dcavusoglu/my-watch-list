
<div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://images.unsplash.com/photo-1484469475235-12770b43d008?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60)">
  iWatchThis
</div>
<h1>My lists</h1>
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col"><%= "No" %></th>
      <th scope="col"> <%= "Name" %> </th>
      <th scope="col"> <%= "" %> </th>
      <th scope="col"> <%= "" %> </th>
    </tr>
  </thead>

  <tbody>
  <% @lists.each do |list| %>
    <tr>
      <th scope="row"><%= list.id %></th>
      <td><%= list.name %> </td>
      <td><%= link_to 'Show', list %></td>
      <td><%= link_to 'Delete', list, method: :delete, data: { confirm: 'Are you sure?' } %></td>
    </tr>
    <% end %>
  </tbody>
</table>
<br>

<%= link_to 'New List', new_list_path, class: 'btn btn-primary' %>

ol {
  display: flex;
  justify-content: space-between;
  li {
    text-decoration: none;
    list-style: none;
    img {
      width: 200px;
    }
  }
}
