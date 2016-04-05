<h3 class="ImportPanel-headerTitle">
  <% if (state === 'selected') { %>
    File selected
  <% } else { %>
    Upload <%- fileEnabled ? 'a file or' : '' %> a URL
  <% } %>
</h3>
<p class="ImportPanel-headerDescription">
  <% if (state !== "selected") { %>
    Paste a URL <% if (fileEnabled) { %>or select a file like CSV, XLS, ZIP, KML, GPX, <a href="http://docs.cartodb.com/cartodb-editor/datasets/#supported-file-formats">see all formats</a>.<% } %>
  <% } %>
  <% if (state === "selected") { %>
    <% if (acceptSync) { %>
      You can also choose when to sync the file.
    <% } else { %>
      Sync options are not available
    <% } %>
  <% } %>
</p>
<% if (state === "selected") { %>
  <button class="NavButton NavButton--back ImportPanel-headerButton js-back">
    <i class="CDB-IconFont CDB-IconFont-arrowPrev"></i>
  </button>
<% } %>
