#encoding: utf-8

require 'erb'

require_relative 'generator_input'

template = 
%Q{<html>
<head>
<link href="slideshow.css" rel="stylesheet" media="screen"/>
<style>
<%= STYLE %>   
#attendee_name {
  display: none;
}
</style>   
</head>
<body>

<div class="presentation">

<% SLIDES.each do |slide| %>
<div class="slide">
  <% if slide[:Subtitle] then %><h1><%= TITLE %></h1><% end %>
  <% if slide[:Subtitle] then %><h2><%= slide[:Subtitle] %></h2><% end %>
  <section style="font-size:2em;">
    <% slide[:Section].each do |text| %>	    
    <%= text %>
    <% end %>
  </section>		    
</div>
<% end %>

<!--   #####  LAST SLIDE : CODING SLIDE   ##### -->

<div class="slide" id="coding">
    
<section>

<div class="code" id="code_input"></div>

<% SLIDES.each do |slide| %>
  <div class="code_helper">
  <% if slide[:Subtitle] then %><h2><center><%= slide[:Subtitle] %></center></h2><% end %>
  <% slide_text = slide[:Helper] || slide[:Section] %>
  <% slide_text.each do |text| %>
    <%= text %>	
  <% end %>
  </div>
<%end %>

<div class="code_author"><span id="last_send_attendee_name">+</span><span id="author_name">#</span></div>

<input type="button" id="execute" value="RUN (ALT-R)">
<input type="button" id="send_code" value="RUN & SEND (ALT-S)" disabled>
<input type="button" id="get_code" value="GET & RUN (ALT-G)" disabled>
<input type="button" id="get_last_send" value=">>">

<textarea class="code_result" id="code_output" readonly></textarea>

</section>

</div>  

</div> <!--presentation-->

<script src="common.js"></script>
<script src="slides.js"></script>
<script src="slideshow.js"></script>

<%= EDITOR_CONFIG %>

<%= PREVENT_DEFAULT_KEYS %>

<script src="slideshow-teacher.js"></script>



</body>
</html>
}

puts ERB.new(template).result()
